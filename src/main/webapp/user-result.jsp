<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Exam Portal</title>
<style><%@include file="/sidebar.css"%>
  .overlay
{
   position:fixed;
    padding:0;
    margin:0;

    top:0;
    left:0;

    width: 100%;
    height: 100%;
    background-color:black;
    opacity:0.6;
    z-index: 1;
}
    .popup .content {
 position: absolute;
 top: 50%;
 left: 50%;
 transform: translate(-50%,-150%) scale(0);
 width: 300px;
 height: 450px;
 z-index: 2;
 text-align: center;
 padding: 20px;
 border-radius: 20px;
 background: #fff;
 border: 1px solid;
}

.popup .close-btn {
 position: absolute;
 right: 20px;
 top: 20px;
 width: 30px;
 height: 30px;
 color: black;
 font-size: 30px;
 border-radius: 50%;
 padding: 2px 5px 7px 5px;
 background: #fff;
 
 }

.popup.active .content {
transition: all 300ms ease-in-out;
transform: translate(-50%,-50%) scale(1);
}


    </style>
</head>
<body><div class="sidenav">
  <a href="/onlineexamportal/user-home">Home</a>
  <a href="/onlineexamportal/user-result">Results</a>
  <a href="myprofile.html">My Profile</a>
  <a href="#">Logout</a>
</div>

<div class="main">
<p align="right">Hi, User Name </p>
<form>Topic :
<select >
<option >Select </option>
<option >English</option>
<option>Math</option>
<option >Aptitude</option>
</select>
</form>
<button onclick="togglePopup()" >start</button>
 <div class="overlay" id="overlay" style="display:none;" onclick="closePopup()"></div>
 <div class="popup" id="popup-1">
   <div class="content">
    <div class="close-btn" onclick="closePopup()">
     <button>X</button></div>

<h1>View Result</h1> 
<select >
<option >Select </option>
<option >English</option>
<option>Maths</option>
<option >Aptitude</option>
</select>
   </div>
  
 </div>
</div>
 <script>
 function togglePopup() {
	 document.getElementById("popup-1").classList.toggle("active");
	 document.getElementById('overlay').style.display = 'block';
	}
 function closePopup() {
	 document.getElementById("popup-1").classList.toggle("active");
	 document.getElementById('overlay').style.display = 'none';

	}
    </script>
</body>
</html>