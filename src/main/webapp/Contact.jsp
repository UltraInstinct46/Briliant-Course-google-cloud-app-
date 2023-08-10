<%-- 
    Document   : Contact
    Created on : Jul 19, 2022, 9:45:10 AM
    Author     : killua
--%>

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
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/Footer_style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  html{
  scroll-behavior: smooth;
}
  ul{
    margin-right: 20px;
  }
  .footer-content i{
    background-color: transparent;
    padding: 0rem;
  }
  .footer-content .button{
    background-color: #548CFF;
    width: 300px;
  }
  .footer-content h3,p{
    font-family: "Montserrat", sans-serif;
  }
  .footer-content h3{
    font-size: 40px;
    margin-bottom: 30px;
  }
  .footer-content p{
    margin-top: 30px;
    font-size: 20px;
  }
  html{
  scroll-behavior: smooth;
}
.title-word {
  animation: color-animation 4s linear infinite;
}

.title-word-1 {
  --color-1: #ACCFCB;
  --color-2: #3D8DAE;
  --color-3: #3D8DAE;
}

.title-word-2 {
  --color-1: #3D8DAE;
  --color-2: #ACCFCB;
  --color-3: #ACCFCB;
}

.title-word-3 {
  --color-1: #ACCFCB;
  --color-2: #E4A9A8;
  --color-3: #ACCFCB;
}

.title-word-4 {
  --color-1: #3D8DAE;
  --color-2: #DF8453;
  --color-3: #E4A9A8;
}

@keyframes color-animation {
  0%    {color: var(--color-1)}
  32%   {color: var(--color-1)}
  33%   {color: var(--color-2)}
  65%   {color: var(--color-2)}
  66%   {color: var(--color-3)}
  99%   {color: var(--color-3)}
  100%  {color: var(--color-1)}
}
.header {
	position: sticky;
	top: 0;
	left: 0;
	right: 0;
	background-color: var(--white);
	box-shadow: var(--box-shadow);
	z-index: 1000;
}

.header .flex {
	display: flex;
	align-items: center;
	justify-content: space-between;
	position: relative;
	padding: 1.5rem 2rem;
}

.header .flex .logo img {
	height: 53px;
}

.header .flex .navbar a {
	margin-left: 2rem;
	font-size: 2rem;
	color: var(--main-color);
	font-family: 'comic sans ms';
}

.header .flex .navbar a:hover {
	text-decoration: underline;
	color: var(--main-color);
}

/* Here are just some visual styles. 🖌 */
.titlecard {
  color: grey;
}
.text {
  display: grid;
  place-items: center;  
  text-align: center;
  height: 10vh
}

.title {
  font-family: "Montserrat", sans-serif;
  font-weight: 800;
  font-size: 3.5vw;
  text-transform: uppercase;
}
.paragraph {
  font-family: "Montserrat", sans-serif;
  font-weight: 800;
  font-size: 2vw;
  color:gainsboro;
}
body {
  font-family: 'Mulish', sans-serif;
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
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #255acc;
  color: white;
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
  filter:brightness(130%);
}


@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

#slide{
    background: linear-gradient(112deg, #ffffff 50%, antiquewhite 50%);
    max-width: 900px;
    margin: auto;
}
.carousel-caption {
    position: initial;
    z-index: 10;
    padding: 5rem 8rem;
    color: rgba(78, 77, 77, 0.856);
    text-align: center;
    font-size: 1.2rem;
    font-style: italic;
    font-weight: bold;
    line-height: 2rem;
}
@media(max-width:767px){
    .carousel-caption {
        position: initial;
        z-index: 10;
        padding: 3rem 2rem;
        color: rgba(78, 77, 77, 0.856);
        text-align: center;
        font-size: 0.7rem;
        font-style: italic;
        font-weight: bold;
        line-height: 1.5rem;
    }
}
.carousel-caption img{
    width: 6rem;
    border-radius: 5rem;
    margin-top: 2rem;
}
@media(max-width:767px){
    .carousel-caption img{
        width: 4rem;
        border-radius: 4rem;
        margin-top: 1rem;
    }
}
#image-caption{
    font-style: normal;
    font-size: 1rem;
    margin-top: 0.5rem;
}
@media(max-width:767px){
    #image-caption{
        font-style: normal;
        font-size: 0.6rem;
        margin-top: 0.5rem;
    }
}
i{
    background-color: rgb(223, 56, 89);
    padding: 1.4rem;
}
@media(max-width:767px){
    i{
        padding: 0.8rem;
    }
}
.carousel-control-prev{
    justify-content: flex-start;
}


.carousel-control-next {
    justify-content: flex-end;
}
.carousel-control-prev,.carousel-control-next{
    transition: none;
    opacity: unset;
}
.home-testimonial{
  background-color: #231834;
  height: 690px}
.why-code{
  background-color: white;
}
.home-testimonial h3{
  color: white;
  font-size: 14px;
  font-weight: 500;
  text-transform: uppercase}
.home-testimonial h2{
  color: white;
  font-size: 28px;
  font-weight: 700}
.nav-link{
  font-size: 25px;
}
.carousel-item .card{
    width: 350px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    margin-top: 15px;
    padding: 1.5%;
    box-sizing: border-box;
    gap: 1rem;
    flex: 1 1;
    margin-bottom: 10px;
}
.carousel-item .card-img-top{
    display: block;
    width: 55%;
    height: 55%;
    background: #E6E7ED;
    text-align: center;
    align-content: center;
    align-items: center;
    border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
}
.carousel-indicators li {
    width: 16px;
    height: 16px;
    margin-left: 5px;
    margin-right: 5px;
    background-color: #c593d8;
    border-radius: 50%;
}

.carousel-control-prev {
    left: -110px;
    border-bottom: 0;
    font-size: 40px;
    color: #444;
    filter: invert(100%);
}
 
.carousel-control-next {
    right: -110px;
    border-bottom: 0;
    font-size: 40px;
    color: #444;
    filter: invert(100%);
}
.testimonial-prev{
  left: 0px;
}
.testimonial-next{
  right:0px;
}
div.a{
        text-align: center;
        text-shadow: 1px;
        font-size: 40px;
        font-family: 'comic sans ms';
        color: rgb(0, 0, 0);
        text-decoration: aqua;
        text-decoration-line: underline;
        text-emphasis-position:4px ;
    }
   .Paragraf{
        text-align: center;
        font-family: 'comic sans ms';
        font-size: larger;
   }

   * {
      box-sizing: border-box;
    }
    
    /* Style untuk inputs */
    .contact input[type=text], select, textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      margin-top: 6px;
      margin-bottom: 16px;
      resize: vertical;
    }
    
    .contact input[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 12px 20px;
      border: none;
      cursor: pointer;
    }
    
    .contact input[type=submit]:hover {
      background-color: #45a049;
    }
    
    /* Style untuk bagian container/contact  */
    .contact .container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 10px;
    }
    
    /* Buat dua kolom yang berfloat di samping satu sama lain */
    .contact .column {
      float: left;
      width: 50%;
      margin-top: 6px;
      padding: 20px;
    }
    
    /* Hapus floats setelah columns */
    .contact .row:after {
      content: "";
      display: table;
      clear: both;
    }
    
    /* Responsive layout -ketika layar kurang dari 600px lebarnya, buat dua kolom bertumpuk satu sama lain, bukan di samping satu sama lain */
    @media screen and (max-width: 600px) {
      .column, input[type=submit] {
        width: 100%;
        margin-top: 0;
      }
    }
    .Lock {
        margin-left: 10px;
        font-family: 'Mulish', sans-serif;
        text-align: justify;
    }
</style>

    </head>
    <body id="page-top" style="background-color:#F2F3F5;">
      <!--Navbar-->
      <%@ include file="header.jsp"%>
  <!-- contact -->
  <div class="mb-3">
<div class="contact" id="contact">
  <div class="container">
    <div style="text-align:center">
      <h2 style="font-size: 50px;"><b>Contact Us</b></h2>
      <p>You can contact us if you have any questions about Brilian Course</p>
    </div>
    <div class="row">
      <div class="column">
        <img src="assets/img/contact.png" style="width:100%">
      </div>
      <div class="column">
        <form class="border border-dark form-group" style="padding:20px">
          <label for="fname">Name</label>
          <input type="text" id="fname" name="Name" placeholder="Add your name" required>
          <div class="valid-feedback">Looks good!</div>
          <div class="invalid-feedback">
            Please provide a valid Email.
          </div>
          
          <label for="E-mail">E-mail</label>
          <input type="text" id="femail" name="E-mail"placeholder="Add your E-mail" required>
          <div class="valid-feedback">Looks good!</div>
          <div class="invalid-feedback">
            Please provide a valid Email.
          </div>
          
          <label for="Massage">Massage</label>
          <textarea id="Massage" name="Massage" placeholder="Add some Massage" style="height:170px" required></textarea>
          <div class="valid-feedback">Looks good!</div>
          <div class="invalid-feedback">
            Please provide a valid Email.
          </div>
          <center><input type="submit" value="Send Message" style="background-color: #162447" id="submit"></center>
        </form>
      </div>
    </div>
  </div>
</div>

  <!-- Footer -->
<%@ include file="footer.jsp"%>

  
          <script>
(() => {
  'use strict';
  const alertPlaceholder = document.getElementById('liveAlertPlaceholder')
  const forms = document.querySelectorAll('.needs-validation');

  const alert = (message, type) => {
  const wrapper = document.createElement('div')
  wrapper.innerHTML = [
    `<div class="alert alert-${type} alert-dismissible" role="alert">`,
    `   <div>${message}</div>`,
    '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
    '</div>'
  ].join('')

  alertPlaceholder.append(wrapper)
}

const alertTrigger = document.getElementById('submit')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms).forEach((form) => {
    form.addEventListener('submit', (event) => {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }
      else if(form.checkValidity()){
        alertTrigger.addEventListener('click', () => {
        alert('Login Successfully!', 'success')
  });
      }
      form.classList.add('was-validated');
    }, false);
  });
})();
          </script>
    </body>
</html>