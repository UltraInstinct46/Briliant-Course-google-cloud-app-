<%-- 
    Document   : aboutus
    Created on : Jul 19, 2022, 9:44:26 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family:comic sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
  box-shadow: 1px 1px 5px rgba(0, 0, 0, .5);
  -webkit-animation: shinyy 4s;
  -moz-animation: shinyy 4s;
  animation: shinyy 4s;
  font-family: 'comic sans ms';
}

.card:hover,
.card:focus {
    filter: brightness(110%);
    box-shadow: rgba(44, 120, 161, 0.45)px 0px 20px 0px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #255acc;
  color: white;
  font-family: 'comic sans ms';
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}


.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>ABOUT US</h1>
  <p>Hello all, for all friends who want to learn about IT, 
    we provide online learning services in BRILIAN.ID .</p>
  <p>below are us as a team in the preparation of this website, THANK YOU :).</p>
</div>

<h2 style="text-align:center; font-family: 'comic sans ms';" >Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="assets/img/Adhisti_Roshandy.jpeg" alt="Adhisti" style="width:100%">
      <div class="container">
        <h2>Adhisti Roshandy</h2>
        <p class="title">Students from CCIT-FTUI</p>
        <p>adhistiroshandy808@gmail.com</p>
        <p><button class="button">Contact Us</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="assets/img/Fahmi_Alamsyah_N.jpg" alt="Fahmi" style="width:100%">
      <div class="container">
        <h2>Fahmi Alamsyah Nugroho</h2>
        <p class="title">Students from CCIT-FTUI</p>
        <p>alamsyahfahmi99@gmail.com</p>
        <p><button class="button">Contact Us</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="assets/img/Restuaji_Eliansyah.jpeg" alt="Restu" style="width:100%">
      <div class="container">
        <h2>Restuaji Eliansyah</h2>
        <p class="title">Students from CCIT-FTUI</p>
        <p>restuaerestu291@gmail.com</p>
        <p><button class="button">Contact Us</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>






<!--tes-->