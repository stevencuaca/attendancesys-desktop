# Import dependencies
from tkinter import *
from playsound import playsound
import os
from datetime import datetime
import webbrowser

# Set object
root = Tk()
# Set background
root.configure(background="#2C3E50")

# Disable windows from resizing
root.resizable(False, False)  

# Set function for each menu
def registerFace():
    os.system("py register_face.py")
    
def trainFace():
    os.system("py train_face.py")

def attendFace():
    os.system("py attend_face.py")

def returnFace():
    os.system("py return_face.py")

def deleteFace():
    os.system("py delete_face.py")  

def checkAttendance():
    webbrowser.open('http://localhost:8000', new=2)

def help():
    webbrowser.open("README.txt")

# Set title
root.title("Attendancesys v1.0")

# Set text on top
Label(root, text="ATTENDANCESYS - PT KLPI",font=("Arial", 15, "bold"),fg="white",bg="#2C3E50",height=3, justify="center").grid(row=0, padx=(200,200))

# Set space between text and menus
Label(root, text="", bg="#2C3E50", height=1).grid(row=1)

# Set button "Register Face"
Button(root,text="Register Face",font=("Arial", 12), bg="#1ABC9C",fg='white',command=registerFace, height=5, width=20).grid(row=2, padx=(80,10),pady=(10,10),sticky=W)

# Set button "Attend"
Button(root,text="Attend",font=("Arial", 12),bg="#27AE60",fg='white',command=attendFace, height=5, width=20).grid(row=2, padx=(10,80),pady=(10,10), sticky=E)

# Set button "Train Dataset"
Button(root,text="Train Dataset",font=('Arial', 12),bg="#F39C12",fg="white",command=trainFace, height=5, width=20).grid(row=3, padx=(80,10),pady=(10,10), sticky=W)

# Set button "Return"
Button(root,text="Return",font=('Arial', 12),bg="#2980B9",fg="white",command=returnFace, height=5, width=20).grid(row=3, padx=(10,80),pady=(10,10), sticky=E)

# Set button "Delete Trained Face"
Button(root,text="Delete Trained Face",font=('Arial', 12),bg="#C0392B",fg="white",command=deleteFace, height=5, width=20).grid(row=4, padx=(80,10),pady=(10,10), sticky=W)

# Set button "Check Attendance"
Button(root,text="Check Attendance",font=('Arial',12),bg="#9B59B6",fg="white",command=checkAttendance, height=5, width=20).grid(row=4, padx=(10,80),pady=(10,10), sticky=E)

# Set credits label
Label(root, text="Developed by Steven Cuaca",font=("Arial", 7, "italic"),fg="white",bg="#2C3E50",height=0, justify="center").grid(row=5, padx=(10,10),pady=(10,10), sticky=W+E)

# Set help button
Button(root, text="How to use?",font=("Arial", 7),fg="white",bg="#2C3E50",height=0, justify="center", command=help).grid(row=5, padx=(10,10),pady=(10,10), sticky=E)

# Set loop forever waiting for events from the user
root.mainloop()