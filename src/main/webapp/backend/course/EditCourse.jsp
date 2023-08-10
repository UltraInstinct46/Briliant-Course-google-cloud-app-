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
        <title>Edit Course</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Edit Course</h1></center>
    <form class="container" method="post">
  <div class="form-group">
    <label for="id">Type</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="Type" readonly name="id_course">
  </div>
   <div class="form-group">
    <label for="email">Image Path</label>
    <input type="text" class="form-control" id="image" placeholder="Image" name="image_course">
  </div>
  <button type="button" id="update"class="btn btn-success">Update</button>
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

const urlParams = new URLSearchParams(window.location.search);
  const courseKey = urlParams.get("key"); // Get the course key from the URL parameter

  const idInput = document.getElementById("id");
  const imageInput = document.getElementById("image");
  const updateButton = document.getElementById("update");

// Retrieve existing course data and populate the form fields
get(ref(db, "Course")).then((snapshot) => {
  snapshot.forEach((courseSnapshot) => {
    const courseData = courseSnapshot.val();
    if (courseData.type === courseKey) {
      idInput.value = courseKey;
      imageInput.value = courseData.image;
      console.log("Found course data:", courseData);
    }
  });
});

// Update the course data
function updateData(event) {
  event.preventDefault();
  
  const updatedImage = imageInput.value;

  // Use `update` to update specific fields within the record
  set(ref(db,"Course/"+courseKey),{
    'image': updatedImage,
    'type' : courseKey
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
