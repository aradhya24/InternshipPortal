<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
  <head>
    <body>
    <meta charset="utf-8">
    <title> Edit Form</title>
  </head>
  
    <style>
        /*---------------------------------------*/
/* Font */
/*---------------------------------------*/
@import url('https://fonts.googleapis.com/css?family=Roboto');


/*---------------------------------------*/
/* Register Form */
/*---------------------------------------*/

nav{
  display: flex;
  padding: 2% 6%;
  justify-content: space-between;
  align-items: center;
}
nav img{
  width: 90px;
}
.header{
                min-height: 100vh;
                width: 100%;
                background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(istockphoto-480651173-612x612.jpg);
                background-position: center;
                background-size: cover;
                position: relative;
        
        }
      body {
  background:linear-gradient(to right, #fff);
}

.signup-form {
  font-family: "Roboto", sans-serif;
  width:650px;
  margin:30px auto;
  background:linear-gradient(to right, #150935 0%, #150935 50%, #150935 99%);
  border-radius: 10px;
  position: relative;
}

/*---------------------------------------*/
/* Form Header */
/*---------------------------------------*/
.form-header  {
  background-color: #150935;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.form-header h1 {
  font-size: 30px;
  text-align:center;
  color:#fff;
  padding:20px 0;
  border-bottom:1px solid #cccccc;
}

/*---------------------------------------*/
/* Form Body */
/*---------------------------------------*/
.form-body {
  padding:10px 40px;
  color:#666;
}

.form-group{
  margin-bottom:20px;
}

.form-body .label-title {
  color:#1BBA93;
  font-size: 17px;
  font-weight: bold;
}

.form-body .form-input {
    font-size: 17px;
    box-sizing: border-box;
    width: 100%;
    height: 34px;
    padding-left: 10px;
    padding-right: 10px;
    color: #333333;
    text-align: left;
    border: 1px solid #d6d6d6;
    border-radius: 4px;
    background: white;
    outline: none;
}



.horizontal-group .left{
  float:left;
  width:49%;
}

.horizontal-group .right{
  float:right;
  width:49%;
}

input[type="file"] {
  outline: none;
  cursor:pointer;
  font-size: 17px;
}

#range-label {
  width:15%;
  padding:5px;
  background-color: #1BBA93;
  color:white;
  border-radius: 5px;
  font-size: 17px;
  position: relative;
  top:-8px;
}


::-webkit-input-placeholder  {
  color:#d9d9d9;
}

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
.signup-form .form-footer  {
  background-color: #EFF0F1;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  padding:10px 40px;
  text-align: right;
  border-top: 1px solid #cccccc;
  clear:both;
}

.form-footer span {
  float:left;
  margin-top: 10px;
  color:#999;  
  font-style: italic;
  font-weight: thin;
}

.btn {
   display:inline-block;
   padding:10px 20px;
   background-color: #1BBA93;
   font-size:17px;
   border:none;
   border-radius:5px;
   color:#bcf5e7;
   cursor:pointer;
}

.btn:hover {
  background-color: #169c7b;
  color:white;
}
.recentNews {
  background-color: rgb(20, 117, 175)  
}
.recentNews .news-title {
  text-align:center;
  padding-top:30px;
  padding-bottom:30px;
  font-family: 'nimbus-sans-condensed', sans-serif;
  font-size:55px;
  font-weight:bold;
  color: #fff;
}
.recentNews .row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-bottom: 30px;
}
.recentNews .ct-blog {
  margin-bottom: 30px;
}
.ct-blog .inner {
  background-color: #FFF;
  padding: 10px;
  transition: all 0.2s ease-in-out 0s;
  cursor: pointer;
  height: 100%;
}
.ct-blog .inner:hover {
  background-color: #e6e6e6;
}
.ct-blog .fauxcrop {
  height: 180px;
  overflow: hidden;
}
.ct-blog .fauxcrop img {
  width: 100%;
}
.ct-blog-content {
  display: table;
  padding: 30px 0 28px;
}
.ct-blog-content .ct-blog-date {
  border-right: 1px solid #95A5A6;
  display: table-cell;
  font-family: "Lato", sans-serif;
  padding: 0px 18px 0px 15px;
  text-align: center;
}
.ct-blog-content .ct-blog-date span {
  font-size: 16px;
  color: rgb(20, 117, 175);  
  font-weight: 700;
  display: block;
  line-height: 1;
}
.ct-blog-content .ct-blog-date strong {
  font-size: 25px;
  color: rgb(20, 117, 175);  
}
.ct-blog-content .ct-blog-header {
  color: #000;
  display: table-cell;
  font-size: 22px;
  font-weight: 700;
  letter-spacing: -0.2px;
  line-height: 1.1;
  padding: 0 20px;
  vertical-align: top;
}
.btn-news {
  color: #333;
  font-size: 14px;
  font-weight: bold;
  padding-bottom: 30px;
  text-align: center;
}
.btn-news.btn-contests a {
  color: #fff;
  font-family: 'nimbus-sans-condensed', sans-serif;
  font-size: 24px;
  transition: all 0.2s ease-in-out 0s;
}
.btn-news.btn-contests a:hover {
  color: #000;
}

    </style>
  </head>
  <body>
     <form class="signup-form" action="/InternshipPortalSpringMvc/editsave" method="POST">

      <!-- form header -->
      <div class="form-header">
        <h1>Edit Form</h1>
      </div>

      <!-- form body -->
      <div class="form-body">

        <!-- Fullname class semester and branch -->
        <div class="horizontal-group">
        
        <div class="form-group left">
            <label for="firstname" class="label-title">ID</label>
            <input type="text" id="firstname" name="id" class="form-input" value="${e.id}" placeholder="" required="required" />
          </div>
        
        
          <div class="form-group right">
            <label for="firstname" class="label-title">Name of the Student</label>
            <input type="text" id="firstname" name="name" class="form-input" value="${e.name}" placeholder="enter your full name" required="required" />
          </div>
          <div class="form-group left">
            <label for="lastname" class="label-title">Class and Semester</label>
            <input type="text" id="lastname" name="year" class="form-input" value="${e.year}" placeholder="Enter your Class and Semester" />
          </div>
      <div class="form-group right">
          <label for="lastname" class="label-title">Branch</label>
          <input type="text" id="lastname" name="branch" value="${e.branch}"class="form-input" placeholder="Enter Your Branch" />
        </div>
      </div>
      <div class="form-group left">
        <label for="prnno" class="label-title">PRN No. </label>
        <input type="text" id="prn" name="prn" class="form-input" value="${e.prn}" placeholder="Enter your PRN No." />
      </div>
       <div class="form-group right">
       <label for="mobno" class="label-title">Mobile No.</label>
       <input type="text" id="email" name="mobNo" class="form-input" value="${e.mobNo}"placeholder="enter your no" required="required">
     </div>

   <!-- Mobile no -->

        <!-- Email -->
        <div class="form-group">
          <label for="email" class="label-title">Email</label>
          <input type="email" id="email" name="email"class="form-input" value="${e.email}" placeholder="enter your email" required="required">
        </div>
        
        
        <div class="form-group">
       <label for="lastname" class="label-title">Address</label>
       <input type="text" id="lastname" name="address" class="form-input" value="${e.address}" placeholder="enter your residential address" required="required">
     </div>
    
        
<!-- percentage -->
        <div class="form-group input-type input-type--percentage">
          <label for="percentage" class="label-title">Overall CGPA till date: </label>
          <input placeholder="Enter your CGPA "class="input input--number input-type__input" value="${e.cgpa}" data-qa="input-number" pattern="[0-9]*" id="answer" name="cgpa" value="" required>
          <abbr title="Percentage" class="input-type__type" id="answer-type">%</abbr>
      </div>
<!-- company name -->
      <div class="form-group">
        <label for="company" class="label-title">Name of the Organization or Company: </label>
        <input type="text" id="email" class="form-input" name=organizationName value="${e.organizationName}" placeholder="Enter Organization or Company Name " required="required">
      </div>
 
    <!-- start date of interneship -->
      <div class="form-group">
        <label for="startdate" class="label-title">Start date of Internship: </label>
        <input type="date" id="email" name="internshipStartDate" value="${e.internshipStartDate}"class="form-input"  placeholder="Enter Start date of Internship " required="required">
      </div>

       <!-- End date of interneship -->
       <div class="form-group">
        <label for="enddate" class="label-title">End date of Internship: </label>
        <input type="date" id="email" name=internshipEndDate value="${e.internshipEndDate}" class="form-input" placeholder="Enter end date of Internship ">
      </div>


    <!--- nature of internship
      <!-- <div class="horizontal-group"> -->
      <div class="form-group">
        <label for="enddate" class="label-title">Nature of Internship </label>
        <select class="form-select" id="nature"  name="nature" aria-label="Default select example">
      
          <option  selected value="Technical">Technical</option>
          <option   value="Non-Technical">Non-Technical</option>
        </select>
</div>


          <div class="form-group left">
            <label class="label-title">If external, is it with:-</label>
            <div class="form-check">
                <input class="form-check-input"  name="internshipExternalInternal" value="Industry" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;Industry	&nbsp;
                </label>   
                <input class="form-check-input"name="internshipExternalInternal" value="NGO" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;NGO	&nbsp;
                </label>
                <input class="form-check-input" name="internshipExternalInternal" value="Govt" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;Govt	&nbsp;
                </label>
                <input class="form-check-input" name="internshipExternalInternal" value="PSU" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;PSU	&nbsp;
                </label>
                <input class="form-check-input" name="internshipExternalInternal" value="Enterprise" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;Enterprise	&nbsp;
                </label>
                <input class="form-check-input" name="internshipExternalInternal" value="Online" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;Online	&nbsp;
                </label>
                <input class="form-check-input" name="internshipExternalInternal" value="Rural Internship" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  &nbsp;Rural Intership	&nbsp;
                </label>
            </div>
          </div>
        </div>
   

      <!-- form-footer -->
      <div class="form-footer">
        <button type="submit" class="btn">Submit </button>
      </div>

    </form>

    <!-- Script for range input label -->
    <script>
      var rangeLabel = document.getElementById("range-label");
      var experience = document.getElementById("experience");

      function change() {
      rangeLabel.innerText = experience.value + "K";
      }
    </script>

  </body>
</html>