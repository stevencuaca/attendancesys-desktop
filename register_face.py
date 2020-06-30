# Import dependencies
import cv2
import os
import mysql.connector
import ctypes
from playsound import playsound
import time

# Set function to chek if directory is exists
def assure_path_exists(path):
    dir = os.path.dirname(path)
    if not os.path.exists(dir):
        os.makedirs(dir)

# Connect to database
""" mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    passwd="",
    database="attendance_system"
)
mycursor = mydb.cursor() """

mydb = mysql.connector.connect(
    host="185.237.145.80",
    user="u8748139_steven",
    password="QI,!zyrb2~7{",
    database="u8748139_attendance_system"
)
mycursor = mydb.cursor()

print("==REGISTER EMPLOYEE FACE==")
print("")
employee_id = input("Enter your Employee ID: ")

sql = "SELECT EXISTS (SELECT first_name FROM employee WHERE employee_id = %s)"
id = (employee_id, )
mycursor.execute(sql, id)
myresult = mycursor.fetchone()

# Check employee id
if int(myresult[0]) < 1:
    print("Employee ID not found!")
    os.system("py register_face.py")
else:
    sql = "SELECT first_name, face_id FROM employee WHERE employee_id = %s"
    id = (employee_id, )
    mycursor.execute(sql, id)
    myresult = mycursor.fetchone()
    sure = input("Your first name is '" + str(myresult[0]) + "' ? (y/n): ")
    if sure == 'Y' or sure == 'y':
        print("Processing your face registration...")
    else:
        print('Thankyou')
        os.system("py register_face.py")

# Start capturing video 
vid_cam = cv2.VideoCapture(2)

# Detect object in video stream using Haarcascade Frontal Face
face_detector = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

# Initialize sample face image
count = 0

# Calling function
assure_path_exists("dataset/")

# Start looping
while(True):

    # Capture video frame
    _, image_frame = vid_cam.read()

    # Showing information on video frame
    font_scale = 0.5
    font = cv2.FONT_HERSHEY_COMPLEX
	# Set the rectangle background to white
    rectangle_bgr = (0, 0, 0)
    # Set text
    text = "Taking 10 images of your face"
	# Get the width and height of the text box
    (text_width, text_height) = cv2.getTextSize(text, font, fontScale=font_scale, thickness=1)[0]
	# Set start position for text
    text_offset_x = 0
    text_offset_y = image_frame.shape[0] - 4
	# Make the coords of the box with a small padding of two pixels
    box_coords = ((text_offset_x, text_offset_y), (text_offset_x + text_width + 2, text_offset_y - text_height + 2))
    cv2.rectangle(image_frame, box_coords[0], box_coords[1], rectangle_bgr, cv2.FILLED)
    cv2.putText(image_frame, text, (text_offset_x, text_offset_y), font, fontScale=font_scale, color=(0, 255, 0), thickness=1)

    # Convert frame to grayscale
    gray = cv2.cvtColor(image_frame, cv2.COLOR_BGR2GRAY)

    # Detect frames of different sizes, list of faces rectangles
    faces = face_detector.detectMultiScale(gray, 1.3, 5)

    # Loops for each faces
    for (x,y,w,h) in faces:

        # Crop the image frame into rectangle
        cv2.rectangle(image_frame, (x,y), (x+w,y+h), (0,255,0), 2)
        
        # Increment sample face image
        count += 1

        # Save the captured image into the datasets folder
        cv2.imwrite("dataset/employee." + str(myresult[1]) + '.' + str(count) + ".jpg", gray[y:y+h,x:x+w])

        # Display the video frame, with bounded rectangle on the person's face
        cv2.imshow('Registering your face...', image_frame)

        # adding delay time
        time.sleep(0.5)

        print('caputred')
        
    # To stop taking video, press 'esc' for at least 100ms
    if cv2.waitKey(100) & 0xFF == 27:
        break

    # If image taken reach 10, stop taking video
    if count>=10:
        playsound('complete.wav')
        print("Successfully Registered")
        ctypes.windll.user32.MessageBoxW(0, "Congratulations " + str(myresult[0]) + " ! Your face has been registered, don't forget to train dataset :)", "Successfully Registered!", 0)
        find = True
        break

# Stop video
vid_cam.release()

# Close all started windows
cv2.destroyAllWindows()
os.kill
