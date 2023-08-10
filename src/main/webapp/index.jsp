<%-- 
    Document   : index
    Created on : Jul 19, 2022, 9:37:00 AM
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
  .card-1 .card-body {
    background : whitesmoke;
    box-shadow: 5px 5px 5px 0px rgb(102, 96, 96);
}

.card-1 .card-img-top {
    box-shadow: 5px 5px 5px 0px rgb(102, 96, 96);
}
  .card-1 .playstore {
    width: 210px;
}

.card-1 .appstore {
  width: 145px;
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
  margin-bottom: 20px;
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
  font-size: 24px;
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
        font-family: 'Mulish', sans-serif;
        color: rgb(0, 0, 0); 
        text-emphasis-position:4px ;
    }
   .Paragraf{
        text-align: center;
        font-family: 'Mulish', sans-serif;
        font-size: larger;
        color:black;
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

*{
  font:'Mulish', sans-serif;
}
ul{
    margin-right: 20px;
  }
</style>



    </head>
    <body id="page-top" style="background-color:#F2F3F5;">


      <!--Navbar-->
<%@ include file="header.jsp"%>
          <!--Background-->
          <div class="bg-image d-flex justify-content-center align-items-center" style="background-image: url('assets/img/background.png'); height: 80vh;" id="home">
            <div class="text">
              <h2 class="title">
                <span class="title-word title-word-1">Start</span>
                <span class="title-word title-word-1">To</span>
                <span class="title-word title-word-2">Learn</span>
              </h2>
              <h1 class="paragraph">Courses designed by our team</h1>
              <h1 class="paragraph">Join us. <b>Its Free !</b></h1>
              <a href="auth/register.jsp"><button type="button" class="btn btn-primary"style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem; ">Start Learning Now!</button></a>
            </div>
          </div>

          <!-- Carousel -->
          <div class="container my-5" id="courses">

          <!--Carousel Wrapper-->
          <div id="multi-item" class="carousel slide carousel-multi-item" data-ride="carousel">
        

        
            <!--Indicators-->
            <ol class="carousel-indicators">
              <li data-target="#multi-item" data-slide-to="0" class="active"></li>
              <li data-target="#multi-item" data-slide-to="1"></li>
              <li data-target="#multi-item" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
        
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
        
              <!--First slide-->
              <div class="carousel-item active">
        
                <div class="row">
                  <div class="col-md-4">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/java.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Java</h4>
                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/javascript.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Javascript</h4>

                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/mysql.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Mysql</h4>


                      </div>
                    </div>
                  </div>
                </div>
        
              </div>
              <!--/.First slide-->
        
              <!--Second slide-->
              <div class="carousel-item">
        
                <div class="row">
                  <div class="col-md-4">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/android.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Android</h4>
                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/codeigniter.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Codeigniter</h4>


                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/git.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Git</h4>


                      </div>
                    </div>
                  </div>
                </div>
        
              </div>
              <!--/.Third slide-->
              <div class="carousel-item">
        
                <div class="row">
                  <div class="col-md-4">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/typescript.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Typescript</h4>


                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/html5.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">HTML 5</h4>


                      </div>
                    </div>
                  </div>
        
                  <div class="col-md-4 clearfix d-none d-md-block">
                    <div class="card mb-2">
                      <a href="Courses.jsp">
                      <img class="card-img-top mx-auto mt-4" src="assets/img/angularjs.png"
                           alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <h4 class="card-title text-center">Angular JS</h4>


                      </div>
                    </div>
                  </div>
                </div>
        
              </div>
            </div>
            <!--/.Slides-->
            <a class="carousel-control-prev" href="#multi-item" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#multi-item" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
          </a>
          </div>
          <!--/.Carousel Wrapper-->

          
        </div>
        <!-- card -->
      <div class="card-1">
        <div class="container">
          <div class="row g-3">
            <div class="col-12 col-md-6 col-lg-4">
              <div class="card text-center" style="width: 18rem;">
                <img src="assets/img/easy to learn.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"><b>Easy to Learn</b></h5>
                  <p class="card-text">With Brilian you can learn step by step and the material is structured. Feel the
                    learning process become easier!</p>
      
                </div>
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <div class="card text-center" style="width: 18rem;">
                <img src="assets/img/beginner friendly (1).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"><b>Beginner Friendly</b></h5>
                  <p class="card-text">No matter your experience level, you will learn codes from basic and achieve your goals
                    by starting your first course. </p>
      
                </div>
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <div class="card text-center" style="width: 18rem;">
                <img src="assets/img/learn anywhere, anytime.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"><b>Learn Anywhere, Anytime</b></h5>
                  <p class="card-text">We provide the flexibility of time for you to learn. Choose your best place to learn and start the journey with Brilian.</p>
      
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <div class="container">
          <div class="row g-3">
            <div class="col-lg-8 col-12 col-md-6 d-flex align-items-stretch">
              <div class="card mb-3">
                <div class="row g-0">
                  <div class="col-md-4">
                    <img src="assets/mockup.jpg" class="img-fluid rounded-start" alt="..."
                      style="height:28.7rem; width: auto;">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body" style="background-color: white; box-shadow: none;">
                      <h5 class="card-title"><b>Learning On The Go !</b></h5>
                      <p class="card-text">Learn on the web or on the go. Brilian is always ready for you and you'll never lose your place.</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      <a href="https://play.google.com/store/games?utm_source=apac_med&utm_medium=hasem&utm_content=Aug2021&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-id-1003227-med-hasem-py-Evergreen-Aug2021-Text_Search_BKWS-BKWS%7CONSEM_kwid_43700065961766560_creativeid_541258268578_device_c&gclid=Cj0KCQjwtvqVBhCVARIsAFUxcRu2ju9RYnVrMwwMGQu29F6EgluUSefcR7JyO4FFDhdAk6Pi4WFb-G0aAkeEEALw_wcB&gclsrc=aw.ds"><img class="playstore" src="https://www.logo.wine/a/logo/Google_Play/Google_Play-Badge-Logo.wine.svg" alt=""></a>
                      <a href= "https://www.apple.com/app-store/"><img class="appstore" src="assets/img/appstore.png" alt=""></a>
      
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-4 col-md-4 col-lg-4">
              <div class="card text-center" style="width: 18rem;">
                <img src="assets/img/skills.png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"><b>Brilian is the perfect platform to boost your technical skills</b></h5>
                  <p class="card-text">From Java, Android, through database. Everything you need is here.</p>
                  <a href="#" class="card-link">Start Courses></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
<!--Why Code-->
     <br><br>
<section class="why-code">
     <div class="a">
         <h1><center>Why Code</center></h1>
     </div>
 <br>
 
 <div class="Paragraf" style="color:black;">
     <p1><b>It's popular.</b>
         Technical skills are in high demand.
         Over <b>60%</b> of new jobs worldwide will require tech skills.</p1>
     <br>
 
     <p2><b>It's promising.</b>
         Unlock your earning potential! 
         Entry-level programmers in the U.S. </p2>
     <br>
     <p3><b>It’s fun.</b>
         Imagine combining your passion and skill with your creativity, 
         and making something new everyday!</p3>
 
 </div>
 <br>
 <div class="Image_1">
     <center>
         <img src="assets/img/home-why-code-1.jpg" alt="Image_1" style="width:50%; height: 30%;">
     </center>
 </div>
 <br>
</section>
          <!-- Testimonial -->
      <section class="home-testimonial">
          <div class="container">
            <div class="row d-flex justify-content-center testimonial-pos">
              <div class="col-md-12 pt-4 d-flex justify-content-center">
                  <h3>Testimonials</h3>
              </div>
              <div class="col-md-12 d-flex justify-content-center">
                  <h2>Explore the students experience</h2>
              </div>
          </div>
            <div id="slide" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="carousel-caption">
                      <p>"Learning in brilian really help me to understand the programming especially for java. 
                        The material is easy to understand and the plus point is we can learn from basic level.
                         We can study step by step in here, it is really helpful for us."
                      </p>
                      <img src="assets/img/Adhisti_Roshandy.jpeg">
                      <div id="image-caption">Adhisti Roshandy</div>
                    </div>   
                  </div>
                  <div class="carousel-item">
                    <div class="carousel-caption">
                      <p>"Hello, studying at BRILIAN.ID is very fun, easy to learn, and easy to understand. 
                        For the material itself is very easy to understand for beginners and complete. 
                        Thank you to BRILIAN.ID who have guided me in learning during this time :)"</p>
                        <img src="assets/img/Fahmi_Alamsyah_N.jpg" class="img-fluid">
                        <div id="image-caption">Fahmi Alamsyah N</div>
                    </div>   
                  </div>
                  <div class="carousel-item">
                    <div class="carousel-caption">
                      <p>"I am gaining useful, practical knowledge for my career as I progress through the courses, and the 
                        flexibility of online learning means I can also priotise my family.Especially on this pandemic, I love this learn course so much."</p>
                        <img src="assets/img/Restuaji_Eliansyah.jpeg" class="img-fluid">
                        <div id="image-caption">Restuaji Eliansyah</div>
                    </div>   
                  </div>
                </div>
                <a class="carousel-control-prev testimonial-prev" href="#slide" data-slide="prev">
                  <i class='fas carousel-control-prev-icon' aria-hidden="true"></i>
                </a>
                <a class="carousel-control-next testimonial-next" href="#slide" data-slide="next">
                  <i class='fas carousel-control-next-icon' aria-hidden="true"></i>
                </a>
              </div>
              
        </div>
      </section>

  <!-- Footer -->
<%@ include file="footer.jsp"%>
  
          <script>
            var alertPlaceholder = document.getElementById('liveAlertPlaceholder')
var alertTrigger = document.getElementById('liveAlertBtn')

function alert(message, type) {
  var wrapper = document.createElement('div')
  wrapper.innerHTML = '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>'

  alertPlaceholder.append(wrapper)
}

if (alertTrigger) {
  alertTrigger.addEventListener('click', function () {
    alert('Nice, you triggered this alert message!', 'success')
  })
}
          </script>
    </body>
</html>

