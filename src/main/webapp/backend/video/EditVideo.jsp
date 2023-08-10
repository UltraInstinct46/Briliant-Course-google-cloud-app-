<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CourseModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Video</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Edit Video</h1></center>
    <form class="container" action="../../Video?proses=updatevideodata" method="post">
  <div class="form-group">
    <label for="id">Type</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="Type" readonly name="id_video">
  </div>
   <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" placeholder="Title" name="title_video">
  </div>
  <div class="form-group">
    <label for="code">Code</label>
    <input type="text" class="form-control" id="code" placeholder="Code" name="code_video">
  </div>
  <button type="button" id="update" class="btn btn-success">Update</button>
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

const urlParams = new URLSearchParams(window.location.search);
  const courseKey = urlParams.get("key"); // Get the course key from the URL parameter

  const idInput = document.getElementById("id");
  const titleInput = document.getElementById("title");
  const codeInput = document.getElementById("code");
  const updateButton = document.getElementById("update");

// Retrieve existing course data and populate the form fields
get(ref(db, "Video")).then((snapshot) => {
  snapshot.forEach((courseSnapshot) => {
    const courseData = courseSnapshot.val();
    if (courseData.type === courseKey) {
      idInput.value = courseKey;
      titleInput.value = courseData.title;
      codeInput.value = courseData.code;
      console.log("Found course data:", courseData);
    }
  });
});

// Update the course data
function updateData(event) {
  event.preventDefault();
  
  const updatedTitle = titleInput.value;
  const updatedCode = codeInput.value;

  // Use `update` to update specific fields within the record
  set(ref(db,"Video/"+courseKey),{
    'title': updatedTitle,
    'type' : courseKey,
    'code' : updatedCode
  })
    .then(() => {
      alert("Data updated successfully");
      // Optionally, redirect to a different page after updating
    })
    .catch((error) => {
      alert(error);
    });
}

updateButton.addEventListener("click", updateData);
</script>
    </body>
</html>
