<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="css/style.css" rel="stylesheet">
</head>
<body>

    <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    </div>
    <br>

   <br>
   <div class="row">
   <div class="col-12">
      <%
   Session ses=FactoryProvider.getFactory().openSession();
         Query q=ses.createQuery("from Note");
      List<Note>   list=q.list();
      if(list.isEmpty())
      {
    	  
    	  out.println("<h3 class='text-uppercase '>plese add notes</h1>");
      }
      for(Note note:list)
      {
    %>	 
    	<div class="card container mt-3">
  <img src="img/notepad.png" class="card-img-top" alt="..." style="max-width:100px; ">
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p class="card-text">  <b>   Last Updated:             <%=note.getAddedDate() %></b></p>
    <a href="Delete?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
  </div>
</div>
    <%
    	}
   %>
   
   
   
   
   </div>
   
   </div>
   

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   


   <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>