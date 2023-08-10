<%-- 
    Document   : DataUser
    Created on : Jul 20, 2022, 4:48:22 PM
    Author     : killua
--%>
<%@page import="Model.DonateModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Data Donation</h1></center>
        <div class="container-md">
            <form method="post">
        <table class="table table-dark table-striped gap-3">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Amount</th>
      <th scope="col">Message</th>
      <th scope="col">Date</th>
    </tr>
  </thead>
  <tbody>
      <% 
      int i = 0;
      DonateModel um = new DonateModel();
      List<DonateModel> list = new ArrayList<DonateModel>();
      list = um.DataDonate();
      while(i<list.size()){
      %>
    <tr>
        <th scope="row"><%= list.get(i).getName() %></th>
      <td><%= list.get(i).getAmount() %></td>
      <td><%= list.get(i).getMessage() %></td>
      <td><%= list.get(i).getDate() %></td>
    </tr>
    <% i++;} %>
  </tbody>
</table>
            </form>
        </div>
    </body>
</html>
