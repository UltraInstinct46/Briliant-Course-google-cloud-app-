<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Add Course</h1></center>
    <form class="container" method="post">
  <div class="form-group">
    <label for="type">Type</label>
    <input type="text" class="form-control" id="type" placeholder="Type" name="type" required>
  </div>
   <div class="form-group">
    <label for="image">Image Path</label>
    <input type="text" class="form-control" id="image" placeholder="Image" name="image" required>
  </div>
  <button id="add"type="button" class="btn btn-success">Add</button>
  <a href="DataCourse.html"><button type="button" class="btn btn-warning">Cancel</button></a>
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
var image = document.getElementById("image");
var add = document.getElementById("add")
function insertData(){
  set(ref(db,"Course/"+typeText.value),{
    'image': image.value,
    'type' : typeText.value
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
