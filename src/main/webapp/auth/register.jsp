<%-- 
    Document   : register
    Created on : Jul 19, 2022, 9:53:10 AM
    Author     : killua
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Brilian</title>
        <link rel="icon" type="image/x-icon" href="assets/img/B.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
          <a class="navbar-brand" href="../../Briliant/index.jsp">
            <img src="../assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Brilian
          </a>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          </div>
          <form class="container-fluid justify-content-end">
            <a href="login.jsp"><button class="btn btn-outline-success me-2 mr-3" type="button">Login</button></a>
            <a href="register.jsp"><button class="btn btn-primary me-2 " type="button">Sign Up</button></a>
          </form>
        </nav>
        <form>
          <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                  <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <form class="row g-3 needs-validation" novalidate>  
                    <div class="card-body p-5 text-center">
          
                      <h3 class="mb-5">Register</h3>
          
                      <div class="form-group">
                        <input type="email" id="email" class="form-control" placeholder="Email" required name="email"/>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">
                          Please provide a valid Email.
                        </div>
                      </div>

                      <div class="form-group">
                        <input type="text" id="name" class="form-control" placeholder="Name" required name="name"/>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">
                          Please provide a valid Name.
                        </div>
                      </div>
          
                      <div class="form-group">
                        <input type="password" id="password" class="form-control" placeholder="Password" required name="password"/>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">
                          Please provide a valid Password.
                        </div>
                      </div>
          
                      <button class="btn btn-primary btn-lg btn-block"type="button" id="register">Register</button>
                      <hr class="text-danger border-2 opacity-50">
                      <p class="text-center">Already have an account? <a href="login.jsp" class="link-primary">Signin</a></p>

                    </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            </form>
            <script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-analytics.js";
  import { getDatabase } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-database.js";
  import { getAuth, createUserWithEmailAndPassword } from "https://www.gstatic.com/firebasejs/10.1.0/firebase-auth.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
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
  const analytics = getAnalytics(app);
  const database = getDatabase(app);
  const auth = getAuth();

  var email = document.getElementById("email");
    var password = document.getElementById("password");
    var name = document.getElementById("name");
    document.addEventListener('DOMContentLoaded', function() {
    const registerButton = document.getElementById('register');

    registerButton.addEventListener('click', (event) => {
      event.preventDefault(); // Prevent the default form submission behavior

      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;
      const name = document.getElementById("name").value;

      createUserWithEmailAndPassword(auth, email, password)
        .then((userCredential) => {
          // User successfully registered
          const user = userCredential.user;
          // ... You might want to store additional user data in the database ...
          alert('Registration Successful!', 'success');
        })
        .catch((error) => {
          const errorMessage = error.message;
          alert(errorMessage, 'danger'); // Display an error alert
        });
    });
  });

  (() => {
  'use strict';

  const alertPlaceholder = document.getElementById('liveAlertPlaceholder');
  const forms = document.querySelectorAll('.needs-validation');

  const alert = (message, type) => {
    const wrapper = document.createElement('div');
    // ... Creating the alert element ...
  };

  const alertTrigger = document.getElementById('login');

  alertTrigger.addEventListener('click', () => {
    var email = document.getElementById("email");
    var password = document.getElementById("password");
    var name = document.getElementById("name");

    createUserWithEmailAndPassword(auth, email, password).then((userCredential) => {
        // User successfully registered
        const user = userCredential.user;
        // ... You might want to store additional user data in the database ...
        alert('Registration Successful!', 'success');
      })
      .catch((error) => {
        const errorCode = error.code;
        const errorMessage = error.message;
        alert(errorMessage, 'danger'); // Display an error alert
      });
  });

  Array.prototype.slice.call(forms).forEach((form) => {
    form.addEventListener('submit', (event) => {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }
      form.classList.add('was-validated');
    }, false);
  });
})();
</script>
                          
    </body>
</html>

