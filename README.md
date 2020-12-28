<!-- <h2 align="center"> Boarding-House Finding Website </h2> -->
<h2 align="center"> Boarding-House Finding Website </h2>
<p align="center">
  <strong align="center"><i>Simple & Easy to find boarding-house!<i></strong>
  <br>
  <a href="http://it4552-group5-trohn.000webhostapp.com/">
     <img alt="Qries" src="https://github.com/manhminno/Tim-Kiem-Nha-Tro/blob/master/images/favicon/favicon.png" width=70" height="70">
  </a>
  <br>
  <strong><a href="http://it4552-group5-trohn.000webhostapp.com/">View Demo</a></strong> |
  <strong><a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/issues">Report Bug</a></strong> |
  <strong><a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/issues">Make Contribution</a></strong>
</p>

## Table of Contents  
#### [1. Introduction](#headers)
#### [2. Getting started](#getting)   
#### [3. Usage](#usage) 
#### [4. Reference](#reference) 
#### [5. Contributors](#contributors)
#### [6. Licence](#licence)
<br>
<a name="headers"/>

### 1. Introduction
#### Finding a boarding-house is not easy for college students. You don't know where to look for boarding-house's information. You worry about the location of boarding-house, you worry about the price of boarding-house, ...
&#8658; Don't worry, come to our website, all problems will be solved!
<br><br>
<a href="http://it4552-group5-trohn.000webhostapp.com/">
   <img alt="Qries" src="https://github.com/manhminno/Tim-Kiem-Nha-Tro/blob/master/images/demo_img.png">
</a>
You can easily find the boarding-house you want. The interface is easy to use, information is very clear. <a href="https://github.com/manhminno/Tim-Kiem-Nha-Tro/issues">Try it now!</a>
> **_NOTE:_** Here I am building a website for finding boarding-house in Hanoi, Vietnam. But you can clone repository and edit the source code and database to match what you want. To do this, go to part 2: getting started.
<a name="getting"/>

### 2. Getting started
* Installation: XAMPP (7.3.25+)
* How to run:
  * After installing XAMPP, change the port in the apache config file and mysql config file to the port in your computer that is empty. I'm using port 3306.
  * Clone this repository and move it into C:\xampp\htdocs\
  * Run Apache and MySQL in XAMPP
  * Project will run on http://localhost/
<a name="usage"/>

### 3. Usage
* Open phpMyAdmin and access to mysql then import database from */database/id15771106_nha_tro_db*
* Fix database's name in file: */controller/connectToDatabase.php* 
```
$conn = mysqli_connect("localhost", "root", "", "id15771106_nha_tro_db");
```
  - root: if u run on local
  - ""  : password to access your database, here is none password
  - id15771106_nha_tro_db: database's name which you want connect
<a name="reference"/>
### 4. Reference

<a name="contributors"/>
### 5. Contributors

<a name="licence"/>
### 6. Licence

