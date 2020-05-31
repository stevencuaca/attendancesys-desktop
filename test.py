import mysql.connector
import datetime

# Get current datetime
current_time = datetime.datetime.now()
attend_date = current_time.date()
attend_time = current_time.time()

# Connect to database
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    passwd="",
    database="attendance_system"
)
mycursor = mydb.cursor()

# Get office rules information from database
sql = "SELECT start_time, time, deduction_per_time, max_late FROM office_rule"
mycursor.execute(sql)
myresult = mycursor.fetchone()

# Set hour and minute variables
start_work = str(myresult[0])
hour = start_work[-8:-6]
minute = start_work[-5:-3]

# Checking if late or not (Late = 1, Not late = 0)
start_work = datetime.time(int(hour), int(minute))
if current_time.time() > start_work:
    is_late = 1
else:
    is_late = 0

# Calculate deduction time based on total minutes of late
times = myresult[1]
deduction = myresult[2]
difference = (datetime.datetime.combine(datetime.date(1, 1, 1), current_time.time()) - datetime.datetime.combine(datetime.date(1, 1, 1), start_work))
temp = myresult[3]
count = 0
total_deduction = 0
while temp > 0:
    if difference >= datetime.timedelta(minutes=temp):
        print("[INFO] You are late more than " + str(temp) + " minutes.")
        count = int(temp)/int(times)
        total_deduction = deduction * count
        print("[INFO] Total deduction: Rp" + str(total_deduction))
        break