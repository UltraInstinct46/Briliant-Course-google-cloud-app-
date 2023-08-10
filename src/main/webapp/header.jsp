<%-- 
    Document   : index
    Created on : Jul 19, 2022, 9:37:00 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            html, body {
    max-width: 100%;
    overflow-x: hidden;
}
  .growing{
    background-color: #325288;
    height: 300px;
    padding: 10px;
    margin-bottom: 300px;
  }
  .growing h1, .Paragraf{
    color: white;
    margin-top: 0px;
    font-family:'Mulish', sans-serif
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
        </style>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>	
    </head>
    <body>
      <!--Navbar-->
      <header class="header">
        <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-lg">
          <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">
              <img src="${pageContext.request.contextPath}/assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Brilian
            </a>
          </div>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            </div>
            <form class="container-fluid justify-content-end">
              <ul class="navbar-nav justify-content-end">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/Courses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/Profile.jsp">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/team.jsp">Team</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/Contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/donation.jsp">Donation</a>
                </li>
              </ul>
                                   <%
            if((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
            %>
            <a href="auth/login.jsp"><button class="btn btn-outline-success me-2 mr-3" type="button">Login</button></a>
            <a href="auth/register.jsp"><button class="btn btn-primary me-2 " type="button">Sign Up</button></a>
             <%
            }else{
             %>
               <li class="nav-item dropdown no-arrow" style="margin-right:100px;">
    <a class="nav-item dropdown no-arrow" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
    <img
            src="${pageContext.request.contextPath}/assets/img/profile.png"

            class="rounded-circle"
            height="42"
            alt="Portrait of a Woman"
            loading="lazy"
          />
    </a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href=""><%=session.getAttribute("name")%></a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/HalamanProfileUser.jsp">Setting</a></li>
      <% if((session.getAttribute("roles").equals("admin"))) {
            %>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/backend">Admin Page</a></li>
      <% } %>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/User?action=logout">Logout</a></li>
    </ul>
  </li> 
 <% }%>
            </form>
          </nav>
        </header>
    </body>
</html>