<%-- 
    Document   : header
    Created on : Jul 20, 2022, 4:03:20 PM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <!-- Sidebar -->
        <head>
    <link href="${pageContext.request.contextPath}/backend/css/sb-admin-2.min.css" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>	
        <body>
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                                <a class="navbar-brand" href="${pageContext.request.contextPath}/backend/">
              <img src="${pageContext.request.contextPath}/assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Admin Brilian
            </a>
 <li class="nav-item dropdown no-arrow">
    <a class="nav-item dropdown no-arrow" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
    <span class="mr-2 d-none d-lg-inline text-gray-600">Data</span>
    </a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/backend/user/DataUser.jsp">User</a></li>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/backend/course/DataCourse.html">Courses</a></li>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/backend/video/DataVideo.html">Video</a></li>
    </ul>
</li>

 <li class="nav-item dropdown no-arrow">
    <a href="${pageContext.request.contextPath}/backend/donation/DataDonation.jsp"">
    <span class="mr-2 d-none d-lg-inline text-gray-600">Donation</span>
    </a>
</li>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>                        
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->


                    </ul>

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
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/">Home Page</a></li>
      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/User?action=logout">Logout</a></li>
    </ul>
  </li> 
                </nav>

        </body>
</head>