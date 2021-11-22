<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="css/style.css" rel="stylesheet">
</head>
<body>
   <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp" %>
    </div>
    <div class="container">
    <h1>fill your note </h1>
    <br>
    <!-- -this is add form -->
    <form action="SaveNote" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Note title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here...." required="required" name="title">
   
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
  <textarea id="content" placeholder="Enter your content here" class="form-control" style="height:200px;" required="required" name="content"></textarea>
  </div>
 <div class="containar text-center " >
  <button type="submit" class="btn btn-primary">Add</button>
 
 </div>
 </form>
    













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