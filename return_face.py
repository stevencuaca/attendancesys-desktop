# Import dependencies for face detection and recognition
from imutils.video import VideoStream
from keras.preprocessing.image import img_to_array
from keras.models import load_model
import numpy as np
# Imutils = for doing translation, rotation, resizing, etc
import imutils
# Pickle = saving and read data to and from a file
import pickle
import time
import cv2
import os
from playsound import playsound
import mysql.connector
import datetime

# Get current datetime
current_time = datetime.datetime.now()
attend_date = current_time.date()
attend_time = current_time.time()

# Set timestamp
timestamp = datetime.datetime.timestamp(current_time)
dt_object = datetime.datetime.fromtimestamp(timestamp)

# Connect database
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    passwd="",
    database="attendance_system"
)
mycursor = mydb.cursor()

# Get employee face id from database
mycursor.execute("SELECT face_id FROM employee")
myresult = mycursor.fetchall()

row = 0
face_id = []
first_name = []

for x in myresult:
  face_id.extend(x)
  row = row + 1

# Get employee names from database
mycursor.execute("SELECT first_name FROM employee")
myresult2 = mycursor.fetchall()

for z in myresult2:
    first_name.extend(z)

print("[INFO] Please Wait...")

# Detect object in video stream using Haarcascade Frontal Face
face_cas = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
#cap = cv2.VideoCapture('http://192.168.0.16:8080/video');

# Read trained dataset
recognizer = cv2.face.LBPHFaceRecognizer_create();
recognizer.read('trainer/trainer.yml');

# load our serialized face detector from disk
print("Loading face detector...")
protoPath = os.path.sep.join(["face_detector", "deploy.prototxt"])
modelPath = os.path.sep.join(["face_detector",
	"res10_300x300_ssd_iter_140000.caffemodel"])
net = cv2.dnn.readNetFromCaffe(protoPath, modelPath)

# load the liveness detector model and label encoder from disk
print("Loading liveness detector...")
model = load_model("liveness.model")
le = pickle.loads(open("le.pickle", "rb").read())

# initialize the video stream and allow the camera sensor to warmup
print("[INFO] Starting video stream...")
vs = VideoStream(src=2).start()
time.sleep(2.0)

# Declaring variables and dictionary for face recognition
id = 0;
dict = {
    'item1': 1
}

# loop over the frames from the video stream
while True:
	# grab the frame from the threaded video stream and resize it
	# to have a maximum width of 600 pixels
	frame = vs.read()
	frame = imutils.resize(frame, width=600)

	# grab the frame dimensions and convert it to a blob
	(h, w) = frame.shape[:2]
	blob = cv2.dnn.blobFromImage(cv2.resize(frame, (300, 300)), 1.0,
		(300, 300), (104.0, 177.0, 123.0))

	# pass the blob through the network and obtain the detections and
	# predictions
	net.setInput(blob)
	detections = net.forward()

	# put 'esc' text on frame
	font_scale = 0.5
	font = cv2.FONT_HERSHEY_COMPLEX
	# set the rectangle background to white
	rectangle_bgr = (0, 0, 0)
	# set some text
	text = "Press 'esc' to exit"
	# get the width and height of the text box
	(text_width, text_height) = cv2.getTextSize(text, font, fontScale=font_scale, thickness=1)[0]
	# set the text start position
	text_offset_x = 0
	text_offset_y = frame.shape[0] - 4
	# make the coords of the box with a small padding of two pixels
	box_coords = ((text_offset_x, text_offset_y), (text_offset_x + text_width + 2, text_offset_y - text_height + 2))
	cv2.rectangle(frame, box_coords[0], box_coords[1], rectangle_bgr, cv2.FILLED)
	cv2.putText(frame, text, (text_offset_x, text_offset_y), font, fontScale=font_scale, color=(0, 255, 0), thickness=1)

	# loop over the detections
	for i in range(0, detections.shape[2]):
		# extract the confidence (i.e., probability) associated with the
		# prediction
		confidence = detections[0, 0, i, 2]

		# filter out weak detections
		if confidence > 0.5:
			# compute the (x, y)-coordinates of the bounding box for
			# the face and extract the face ROI
			box = detections[0, 0, i, 3:7] * np.array([w, h, w, h])
			(startX, startY, endX, endY) = box.astype("int")

			# ensure the detected bounding box does fall outside the
			# dimensions of the frame
			startX = max(0, startX)
			startY = max(0, startY)
			endX = min(w, endX)
			endY = min(h, endY)

			# extract the face ROI and then preproces it in the exact
			# same manner as our training data
			face = frame[startY:endY, startX:endX]
			face = cv2.resize(face, (32, 32))
			face = face.astype("float") / 255.0
			face = img_to_array(face)
			face = np.expand_dims(face, axis=0)

			# pass the face ROI through the trained liveness detector
			# model to determine if the face is "real" or "fake"
			preds = model.predict(face)[0]
			j = np.argmax(preds)
			label = le.classes_[j]
			
			# if real
			count = 0
			if (str(label) == 'real'):
				if (float(preds[j]) >= 0.9):
					gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
					faces = face_cas.detectMultiScale(gray, 1.3, 7)
					for (x,y,w,h) in faces:
						roi_gray = gray[y:y + h, x:x + w]
						cv2.rectangle(frame, (x,y), (x+w, y+h), (0,255,0),2);
						id,conf=recognizer.predict(roi_gray)
						if(conf < 40):
							for i in range(row):
								if(id==int(face_id[i])):
									id=str(first_name[i])
									if((str(id)) not in dict):
										#filename=xlwrite.output('attendance','class1',1,id,'yes');
										dict[str(id)]=str(id);
										#check if attend is already recorded
										sql = "SELECT EXISTS (SELECT * FROM attendance WHERE face_id = %s AND attend_date = %s)"
										id2 = (face_id[i], attend_date)
										mycursor.execute(sql, id2)
										myresult = mycursor.fetchone()
										if int(myresult[0]) > 0:
											sql = "UPDATE attendance SET return_time = %s, updated_at = %s WHERE face_id = %s AND attend_date = %s"
											val = (attend_time, dt_object, face_id[i], attend_date)
											mycursor.execute(sql, val)
											mydb.commit()
											playsound('success.wav')
											print("[INFO] " + first_name[i] + ", your return time has been recorded in database")
										else:
											print("[INFO] " + first_name[i] + ", you havent't presence the attendance")
									cv2.putText(frame, str(id), (x, y-10), font, fontScale=font_scale, color=(0, 255, 0), thickness=1)
									#cv2.putText(frame,str(id) ,(x,y-10),font,0.55,(120,255,120),1)
			else:		
				# draw the label and bounding box on the frame
				label = "{}: {:.4f}".format(label, preds[j])
				cv2.putText(frame, label, (startX, startY - 10),
					cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
				cv2.rectangle(frame, (startX, startY), (endX, endY),
					(0, 0, 255), 2)

	# show the output frame and wait for a key press
	cv2.imshow("Return Frame", frame)
	key = cv2.waitKey(1) & 0xFF

	# if the `q` key was pressed, break from the loop
	if key == 27:
		break

# do a bit of cleanup
cv2.destroyAllWindows()
vs.stop()