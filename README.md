# Attendancesys-Desktop

<p align="center">
  <img src="https://i.ibb.co/0JnZKW7/2.png">
</p>

A desktop app of attendancesys for face recognition attendance system with anti-spoofing. This app is integerated with another web application. You can check on my another repo or just click this link: https://github.com/stevencuaca/attendancesys-web

## Getting Started

This is a face recognition application that running with Python. The application is used for a company to record the employees attendance in database using a webcam. To use this applicatoin you need a laptop/pc that have a NVIDIA graphics card because this application runs with Tensorflow and CUDA. This application able to detect a real face or fake face (a picture from a smartphone's screen). I'm using Local Binary Pattern Histogram (LBPH) for the face recognition and Convolutional Neural Network (CNN) for the anti-spoofing. There is also an Admin Panel web page to seeing the report, manage the employee, office rules, salary calculation, etc.

### Prerequisites

I'm installing this in my pc/laptop, so you need to follow the version (Please note some of dependencies are depends on your laptop/pc hardware specification):

```
Python: 3.6.8
Cuda: 9.0
Cuddn: 7.64
Tensorflow: 1.8
Keras: 2.1.5
Numpy: 1.16.1
Scipy: 1.1.0
Tkinter: 8.6
Pillow: 6.2.1
OpenCV: 4.1.2
MYSQL Connector: 8.0.19
```

### Installing


#### Python
For installing the Python you can just visit: https://www.python.org/downloads/.

#### Python Libraries
After Python installed you need to install the libraries. For installing the libraries you can just open your terminal and type "pip install <library-name==version>"

Example:
```
pip install numpy==1.16.1
```

#### Tensorflow, CUDA, Keras
Installation for Tensorflow, CUDA, and Keras is a bit complicated. I'm following the tutorial from this video: https://www.youtube.com/watch?v=qrkEYf-YDyI&list=WL&index=6&t=1130s

And btw, i'm using Tensorflow that rendered with GPU.

#### Database
I'm using MySQL for the database. So, after you've installed all the prerequisites above, you need to import the database. First, create a database called "attendance_system". Then, import "attendance_system.sql" to the database.


## Running the tests

I've uploaded the demo of application, so you can see it from here: https://bit.ly/2zME7A2


## Built With

* [Python 3.6.8](https://www.python.org/) - The programming language used
* [Laravel](https://laravel.com/) - The framework used
 

## Authors

* **Steven Cuaca** - *Initial work* - [E-mail] cuacasteven@gmail.com
