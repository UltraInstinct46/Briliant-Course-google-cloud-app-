<%-- 
    Document   : DataUser
    Created on : Jul 20, 2022, 4:48:22 PM
    Author     : killua
--%>
<%@page import="Model.VideoModel"%>
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
    <center><h1>Data Video</h1></center>
        <div class="container-md">
            <a href="AddVideo.jsp"><button type="button" class="btn btn-success p-2" style="width: 100px;margin: 10px">Add</button></a>
            <form method="post">
        <table class="table table-dark table-striped gap-3">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Type</th>
      <th scope="col">Title</th>
      <th scope="col">Code</th>
      <th scope=""col">Action</th>
    </tr>
  </thead>
  <tbody>
      <% 
      int i = 0;
      VideoModel vm = new VideoModel();
      List<VideoModel> list = new ArrayList<VideoModel>();
      list = vm.DataVideo();
      while(i<list.size()){
      %>
    <tr>
        <th scope="row"><%= list.get(i).getId() %></th>
      <td><%= list.get(i).getType() %></td>
      <td><%= list.get(i).getTitle() %></td>
      <td><%= list.get(i).getCode() %></td>
      <td>
          <button type="submit" class="btn btn-warning px-2" formaction="../../Video?proses=updatevideo" name="id" value="<%= list.get(i).getId() %>">Edit</button>
          <button type="submit" class="btn btn-danger px-2"  formaction="../../Video?proses=deletevideo" name="id" value="<%= list.get(i).getId() %>">Delete</button></td>
    </tr>
    <% i++;} %>
  </tbody>
</table>
            </form>
        </div>
    </body>
</html>
