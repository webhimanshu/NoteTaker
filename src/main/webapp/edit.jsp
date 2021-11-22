<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp" %>
</div>
<h1>This is edit page</h1>
<%
Session ses=FactoryProvider.getFactory().openSession();
int noteid=Integer.parseInt(request.getParameter("note_id").trim());

Note note =(Note)ses.get(Note.class, noteid);

%>

<div class="container">
    <form action="Update" method="post">
     <div class="mb-3">
    
    <input type="hidden" class="form-control " id="title" aria-describedby="emailHelp"  required="required" name="id" value=<%= note.getId()%> >
   
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Note title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp"  required="required" name="title" value=<%= note.getTitle() %>>
   
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
  <textarea id="content"  class="form-control" style="height:200px;" required="required" name="content"> <%= note.getContent() %></textarea>
  </div>
 <div class="containar text-center " >
  <button type="submit" class="btn btn-primary">Submit</button>
 
 </div>
 </form>

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