
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page isELIgnored="false"  %>

<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Edit</th><th>Delete</th></tr>  
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
   </table>  
   <br/>  
   <a href="add">Add New Employee</a>  

