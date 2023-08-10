<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CourseModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Video</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Add Video</h1></center>
    <form class="container" method="post">
      <div class="form-group">
        <label for="type">Type</label>
        <input type="text" class="form-control" id="type" placeholder="Type" name="type" required>
      </div>
   <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" placeholder="Title" name="title" required>
  </div>
  <div class="form-group">
    <label for="code">Code</label>
    <input type="text" class="form-control" id="code" placeholder="Code" name="code" required>
  </div>
  <button type="button" id="add" class="btn btn-success">Add</button>
  <a href="DataVideo.html"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
<script type="module">
  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-app.js";

// TODO: Replace the following with your app's Firebase project configuration
// See: https://firebase.google.com/docs/web/learn-more#config-object
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyBPeXrWvXowgZbmF6lk4K_HUOvEjzK8I6w",
    authDomain: "briliant-course.firebaseapp.com",
    databaseURL: "https://briliant-course-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "briliant-course",
    storageBucket: "briliant-course.appspot.com",
    messagingSenderId: "533580286116",
    appId: "1:533580286116:web:bb40153c081bbd09063e31",
    measurementId: "G-73QXPDJMTE"
  };

// Initialize Firebase
const app = initializeApp(firebaseConfig);
import {getDatabase, set, get, update, remove, ref, child }
from "https://www.gstatic.com/firebasejs/10.1.0/firebase-database.js"

// Initialize Realtime Database and get a reference to the service
const db = getDatabase();

var typeText = document.getElementById("type");
var title = document.getElementById("title");
var code = document.getElementById("code");
var add = document.getElementById("add");
function insertData(){
  set(ref(db,"Video/"+typeText.value),{
    'title': title.value,
    'type' : typeText.value,
    'code' : code.value
  })
  .then(()=>{
    alert("Data added successfully");
  })
  .catch((error)=>{
    alert(error);
  });
}

add.addEventListener('click', insertData);
</script>
    </body>
</html>
