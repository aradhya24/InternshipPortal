
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page isELIgnored="false"  %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/f1704facaa.js" crossorigin="anonymous"></script>
  <title>Admin</title>
  <style>
    *{
      padding: 0%;
      margin: 0;
    }
    img{
      height: 60px;
      width: 180px;
     
    }
    a{
      font-size: 25px;
      color: black;
      font-family: Georgia, 'Times New Roman', Times, serif;
    }
    #admin:hover{
      color: red;
    }
    .btn{
      border: none;
      background-color:#434242;
      
      font-size: 10px;
       padding: 0%;
      margin: 0;
      color:white;
      width: 60px;
      height:80px
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
    
  </style>
</head>
<body>
  <div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">
                <img src="https://siesgst.edu.in/images/sies_gst_logo.jpg" height="50" alt="CoolBrand">
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
             
                
                <div class="navbar-nav ms-auto">
                  <a href="#" class="nav-item nav-link active" id="admin">ADMIN</a>
                 <button class="btn" >
                 LOGOUT
                 </button>
                  <!-- <a href="#" class="nav-item nav-link active" id="admin">LOGOUT</a> -->
                    <!-- <a href="#" class="nav-item nav-link active" id="admin">ADMIN</a> -->
                </div>
            </div>
        </div>
    </nav>
</div> 
<div class="container mt-5">
<table class="table table-hover">
  <thead>
    <tr>
      <th >ID</th>
      <th >Name</th>
      <th >Class</th>
      <th >Branch</th>
      <th >Prn No</th>
      <th >Mobile Number</th>
      <th >Email</th>
      <th scope="col">Address</th>
      <th scope="col">CGPA</th>
      <th scope="col">Oraganisation name</th>
      <th scope="col">Intern Start On</th>
      <th scope="col">Intern Complete On</th>
      <th scope="col">External/Internal</th>
      <th scope="col">Nature</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
 <c:forEach var="e" items="${list}">   
   <tr>  
   <td>${e.id}</td>  
   <td>${e.name}</td>  
   <td>${e.year}</td> 
   <td>${e.branch}</td> 
   <td>${e.prn}</td>  
   <td>${e.mobNo}</td>  
   <td>${e.email}</td> 
   <td>${e.address}</td>  
   <td>${e.cgpa}</td>  
   <td>${e.organizationName}</td>  
   <td>${e.internshipStartDate}</td>  
   <td>${e.internshipEndDate}</td>  
   <td>${e.internshipExternalInternal}</td>  
    <td>${e.nature}</td>    
   <td><a href="edit/${e.id}">Edit</a></td>  
   <td><a href="delete/${e.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
  </tbody>
</table>
</div>
</body>
</html>