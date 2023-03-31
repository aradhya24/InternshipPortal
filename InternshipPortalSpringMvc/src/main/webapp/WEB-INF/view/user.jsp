<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Online Courses & Summer Training-SIES.Trainings</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>@import url('https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap');
  *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
  
       
  }
  body{
      font-family: 'Josefin Sans', sans-serif;
      overflow: hidden;
      
  }
  :root{
      --bg:#150935;
  }
  
  .main_div{
      width: 100%;
      height: 100vh;
      position: relative;
  }
  
  .box{
      width: 380px;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      padding: 50px;
      background-color: var(--bg);
      border-radius: 10px;
  }
  
  .box h1{
      margin-bottom: 30px;
      color: #fff;
      text-align: center;
      text-transform: capitalize;
  
  }
  
  .box .inputBox{
      position: relative;
  
  }
  
  .box .inputBox input{
      width: 100%;
      padding: 10px;
      font-size: 16px;
      color: #fff;
      letter-spacing: 1px;
      margin-bottom: 30px;
      border: none;
      border-bottom: 1px solid #fff;
      outline: none;
      background: transparent;
  }
  
  .box .inputBox label{
      position: absolute;
      top: 0;
      left: 0;
      letter-spacing: 1px;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      transition: 0.5;
  }
  
  .box .inputBox input:focus ~ label,
  .box .inputBox input:valid ~ label{
      top: -20px;
      left: 0;
      color: #03a9f4;
      font-size: 12px;
      transition: 0.5;
  }
  
  .btn{
      background: transparent;
      border: none;
      outline: none;
      color: #fff;
      background-color: #03a9f4;
      padding: 8px 16px;
      border-radius: 5px;
      font-size: 14px;
      font-family: 'Josefin Sans', sans-serif;
      font-weight: 600;
  
  }
  
    .account-exist{
          color: #fff;
          margin-top: 35px;
      
      }
      .account-exist a{
          text-decoration: none;
          color: #03a9f4;
          border-bottom: 1px solid #03a9f4;
          
      }
  
  @media (max-width:700px) {
      .box{
          width:80vw;
          height: fit-content;
      }
      
  }
  
  @media (max-width:400px) {
      .box{
          width: 100vw;
          height: fit-content;
      }
      
  }
   
</style>
  <title>Login</title>
</head>
<body>

<div class="main-div">
  <div class="box">
    <h1>Login Form</h1>

    <form action="uservalidate" method="post" autocomplete=off>
      <div class="inputBox">
      <input type="text" name="usernameemail" id = "usernameemail" required value=""> 
      <label for="">Username</label>
    </div>

    <div class="inputBox">
      <input type="password" name="password" id = "usernameemail" required value=""> 
      <label for="">Password</label>
    </div>

    <button type="submit" class="btn" name="submit">Login</button>

  </form>

    <div class="account exist">
        Create a new account? <a href="usersignup" id="signup">Sign Up</a>
      </div>
      

  </div>
</div>

</body>
</html>