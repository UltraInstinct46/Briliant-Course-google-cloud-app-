<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile User</title>
    <link rel="stylesheet" type="text/css" href="css/ProfileUser.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">

</head>

<body>
    <%@ include file="header.jsp"%>
    <div class="card mt-50 mb-50">
        <div class="card-title mx-auto mb-4"> Your Profile </div>
        <form action="${pageContext.request.contextPath}/User?proses=settinguserdata" method="POST">
            <span id="card-header">ID Customer</span>
            <div class="row row-1">
                <input name="id_setting" type="text" value="<%=session.getAttribute("id")%>" required readonly>
            </div>

            <span id="card-header">Name</span>
            <div class="row row-1">
                <input name="name_setting" type="text" value="<%=session.getAttribute("name")%>" required>
            </div>

            <span id="card-header">Email</span>
            <div class="row row-1">
                <input name="email_setting" type="email" value="<%=session.getAttribute("email")%>" required>
            </div>

            <span id="card-header">Password</span>
            <div class="row row-1">
                <input name="password_setting" type="text" value="<%=session.getAttribute("password")%>" required>
            </div>
            <input name="roles_setting" type="text" value="<%=session.getAttribute("roles")%>" hidden>
            <div class="mt-3">
                <button type="submit" name="submit" class="btn btn-primary">UPDATE</button>
            </div>
            <div class=" text-center">
                <a class="btn btn-danger" href="${pageContext.request.contextPath}">CANCEL</a>
            </div>
        </form>
    </div>
</body>

</html>