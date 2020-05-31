# Import dependencies
import os
import mysql.connector
import ctypes
from playsound import playsound

#connect database
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    passwd="",
    database="attendance_system"
)
mycursor = mydb.cursor()

print("==DELETE EMPLOYEE FACE==")
print("")
employee_id = input("Enter your Employee ID: ")
sql = "SELECT EXISTS (SELECT first_name FROM employee WHERE employee_id = %s)"
id = (employee_id, )
mycursor.execute(sql, id)
myresult = mycursor.fetchone()
if int(myresult[0]) < 1:
    print("Employee ID not found!")
    os.system("py delete_face.py")
else:
    sql = "SELECT first_name, face_id FROM employee WHERE employee_id = %s"
    id = (employee_id, )
    mycursor.execute(sql, id)
    myresult = mycursor.fetchone()
    sure = input("Your first name is '" + str(myresult[0]) + "' ? (y/n): ")
    if sure == 'Y' or sure == 'y':    
        number = 1
        for i in range(10):
            os.remove("dataset/employee." + str(myresult[1]) + "." + str(number) + ".jpg")
            number = number + 1
        playsound('complete.wav')
        print("Face photos have successfully deleted!")
        ctypes.windll.user32.MessageBoxW(0, "Congratulations " + str(myresult[0]) + " ! Your face has been deleted :)", "Successfully Deleted!", 0)


