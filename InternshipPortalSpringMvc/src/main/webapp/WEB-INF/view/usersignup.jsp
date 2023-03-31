<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>Online Courses  & Summer Training-SIES.Trainings</title>
    <meta charset="utf-8">
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
          
      }</style>
    <title>Sign Up</title>

  </head>

  <body>
    <div class="main-div">
      <div class="box">
    <h1>Sign Up Form</h1>
    

    <form class="" action="" method="post" autocomplete="off">
    
    <div class="signup">
      <div class="inputBox">
      <input type="text" name="name" id = "name" required value="">
      <label for="">Full Name</label>  
    </div>
      <div class="inputBox">
      <input type="text" name="username" id = "username" required value="">
      <label for="">Username</label>  
    </div>

      <div class="inputBox">
      <input type="email" name="email" id = "email" required value=""> <br>
      <label for="">Email</label>  
    </div>
      <div class="inputBox">
      <input type="password" name="password" id = "password" required value=""> <br>
      <label for="">Password</label>  
    </div>
      <div class="inputBox">
      <input type="password" name="confirmpassword" id = "confirmpassword" required value=""> <br>
      <label for="">Confirm Password</label>
    </div>
      <button type="submit" class="btn" name="submit">Sign Up</button>
      </form>
      <div class="account-exist">
      Already have an account? <a href="user" id="login">Login</a>
      </div>
    
    
    </div>
  </body>
</html>