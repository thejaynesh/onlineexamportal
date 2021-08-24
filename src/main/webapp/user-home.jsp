<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Exam Portal</title>
<style><%@include file="/sidebar.css"%></style>
</head>
<body><div class="sidenav">
  <a href="/onlineexamportal/user-home">Home</a>
  <a href="/onlineexamportal/user-result">Results</a>
  <a href="myprofile.html">My Profile</a>
  <a href="#">Logout</a>
</div>

<div class="main">
<p align="right">Hi, User Name </p>
<h1 Style="margin-left:30px" >Online Examination portal </h1>
<h2 Style="margin-left:30px" >Instructions </h2>
<div Style="margin-left:30px">
<ul>
<li>The examination will comprise of Objective type Multiple Choice Questions (MCQs) </li>
<li>All questions are compulsory and each carries One mark</li>
<li>The answers <b>cannot</b> be changed at any time during the test once you have moved ahead from that question</li>
<li>The total number of questions, duration of examination, will be different based on
the course, the detail is available on your screen.</li>
<li>There will be NO NEGATIVE MARKING for the wrong answers</li>
<li>The examination does not require using any paper, pen, pencil and calculator</li>
<li>The students just need to click on the Right Choice / Correct option from the
multiple choices /options given with each question. For Multiple Choice Questions,
each question has four options, and the candidate has to click the appropriate
option.</li>
<li>The student proceeds answering the questions one by one by clicking on the next button.
<li>Every student will take the examination on a Laptop/Desktop/Smart Phone only.</li>
<li>Student should not change tab or move from the browser window.</li>
<li>If any user is found cheating ,score of that exam will be removed. </li>
</ul>
<hr>
<h3> To start examination , Select a Topic and click on Start.</h3>
<form>Topic :
<select >
<option >Select </option>
<option >English</option>
<option>Maths</option>
<option >Aptitude</option>
</select>
<input type="Submit" value="Start">
</form>
</div>
</div>
</body>
</html>