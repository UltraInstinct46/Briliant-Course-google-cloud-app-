<%-- 
    Document   : DataUser
    Created on : Jul 20, 2022, 4:48:22 PM
    Author     : killua
--%>
<%@page import="Model.CourseModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.UserModel"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Data Course</h1></center>
        <div class="container-md">
            <a href="AddCourse.jsp"><button type="button" class="btn btn-success p-2" style="width: 100px;margin: 10px">Add</button></a>
            <form method="post">
        <table class="table table-dark table-striped gap-3">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Image</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>
            </form>
        </div>
        <script type="module">
            import { initializeApp } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-app.js";
            import {getDatabase, set, get, update, remove, ref, child, onValue}
from "https://www.gstatic.com/firebasejs/10.1.0/firebase-database.js"

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

  const app = initializeApp(firebaseConfig)
    // here connection is created with database
    const database = getDatabase()

    const dataContainer = document.querySelector('tbody')

    // give complete path to fetch data as given during sending
    var fetchedDataRef = ref(database, 'Course/');
    onValue(fetchedDataRef, (snapshot) => {
  var data = snapshot.val();
    var htmlData = '';
    for (var key in data) {
      var value = data[key];
      htmlData += `
        <tr>
          <th scope="row">${value.type}</th>
          <td><img src="${value.image}" style="height:40px"></img></td>
          <td>
            <button class="btn btn-warning px-2" onclick="readyForUpdate('${value.type}', this)">Update</button>
            <button class="btn btn-danger px-2" onclick="removeMess('${key}')">Delete</button>
          </td>
        </tr>
      `;
    }
  dataContainer.innerHTML = htmlData;
  console.log(value);
  console.log(htmlData);
});

function readyForUpdate(key, button) {
  // Your update function logic here
}

function removeMess(uniqueId){
        ref('Course/' + uniqueId).remove();
        // this realtime remove will delete data without any loading
        // as data is updated, it refetch and rerender in html automatically
    }
        </script>
    </body>
</html>
