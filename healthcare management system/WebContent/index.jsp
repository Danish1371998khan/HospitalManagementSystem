<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Hospital Information System</title>
<!--<script language="JavaScript">
javascript:window.history.forward(1);
</script> -->
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<script language="JavaScript">
function validation()
{
var a = document.f.uname.value;
var b = document.f.pass.value;
if(a=="")
{
alert("Enter Your UserName");
document.f.uname.focus();
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f.pass.focus();
return false;
}
return true;
}
</script>
<script language="JavaScript">
function valid()
{
var a = document.f1.uname.value;
var b = document.f1.pass.value;
if(a=="")
{
alert("Enter Your UserName");
document.f1.uname.focus();
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f1.pass.focus();
return false;
}
return true;
}
</script>
<script language="JavaScript">
function validat()
{
var a = document.f2.empid.value;
var b = document.f2.password.value;
if(a=="")
{
alert("Enter Your Employee ID");
document.f2.empid.focus();
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f2.password.focus();
return false;
}
return true;
}
</script>
<script language="JavaScript">
function validate()
{
var a = document.f3.phaid.value;
var b = document.f3.password.value;
if(a=="")
{
alert("Enter Your Employee ID");
document.f3.phaid.focus();
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f3.password.focus();
return false;
}
return true;
}
</script>
</head>

<body>
<div id="main_container">
	<div id="header">
    	<div id="logo">
		<div style="position:absolute; left:550px; top:60px;"><font color="#FF9900" size="5"><strong> &nbsp &nbsp Hospital Management System</strong></font> </div>
		&nbsp;&nbsp;<img src="images/logo.jpg" width="250" height="150" align="right">
		</div>
        
        <div id="menu">
            <ul>                                   
                <li><a class="current" href="index.jsp" title="">Home</a></li>
                <li><a href="#" title="">Admin Login</a></li>
                <li><a href="#" title="">Doctor Login</a></li>
                <li><a href="#" title="">Patient Login</a></li>
                <li><a href="#" title="">Pharmacy Login</a></li>
            </ul>
        </div>
        
    </div>
    
    <div class="green_box">
    	<div class="clock">
        <img src="images/clock.png" alt="" title="" />             
        </div>
        <div class="text_content">
        <h1>Hospital Management?</h1>
        <p class="green">
        "  Its rich Medical Store serves to the purpose of the medicines of the patients who visit this hospital. The medical store currently is facing problems in maintaining its inventory and keeping its relations up-to-date with its suppliers. The Medical Store issues medicines to the patients and also receives the unused medicines in good condition from the patients to minimize wastage. With increasing number of patients this record keeping has become a burden and is no longer sustainable with the current manual system. It, therefore, badly needs an improved and efficient computerized system for maintaining its Inventory, Issue, and purchase activities etc." 
        </p>
       
        </div>
        
        <div id="right_nav">
            <ul>                                        
                <li><a href="index.jsp" title="">Home</a></li>
                <li><a href="#" title="">Admin Login</a></li>
                <li><a class="#" href="#" title="">Doctor Login</a></li>
                <li><a href="#" title="">Patient Login</a></li>
                 <li><a href="#" title="">Pharmacy Login</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
    	<div id="left_content">
        <h2>Welcome to Our Hospital</h2>
        <p>
"The hospital treats both indoor patients and the outdoor patients. It has to maintain full information of the indoor patients as well as outdoor patients for the purpose of historical use. Doctors who serve to the hospital are the regular employees of the hospital; however, sometimes external doctors are used to handle complicated cases. So the hospital needs to maintain its Doctors’ records separately along with the records of its other employees. All these operations are getting unmanageable day by day because of the stiff rise in data."         
        </p>
        
         <div id="left_nav">
            <ul>                                        
                <li><a href="#" title="">Purchase Medicine</a></li>
                <li><a href="employeelogin.jsp" title="">Indoor Patient Details</a></li>
                <li><a href="#" title="">Accounting Details</a></li>
                <li><a href="#" title="">Outdoor Patient Details</a></li>
				<li><a href="#" title="">Payment & Billing</a></li>
				<li><a href="#" title="">Digital Image Processing</a></li>
				<li><a href="#" title="">Employee Details</a></li>
				
            </ul>
        </div>
        
            
        
        </div><!--end of left content-->



    	<div id="right_content">
        
        	<div style="border:21px solid orange;">
			<h2 style="font-family:verdana;font-size:15px;">Admin Login</h2>
  <img src="images/icon-hire-part-time-full-ti.gif" alt="" title="" class="box_img" />
            <form action="adminlogininsert.jsp" name="f" method="get" onSubmit="return validation();">    
            <p align="center">			    
            <div>Username:&nbsp;&nbsp;<input type="text" name="uname" class="fielditem"></div><br>
			<div>Password:&nbsp;&nbsp;&nbsp;<input type="password" name="pass" class="fielditem"></div><br>
			<div align="center"><input type="submit" name="sub" id="submit1" value=""></div>
            </p>
			</form>
            </div>
            
            
         	<div style="border:21px solid orange;">
			<h2 style="font-family:verdana;font-size:15px;">Doctor Login</h2>
  <img src="images/doctor_icon.jpg" alt="" width="82" height="68" class="box_img" title="" />
             <form action="doctorlogininsert.jsp" name="f1" method="get" onSubmit="return valid();">    
            <p align="center">         
             <div>Username:&nbsp;&nbsp;&nbsp;<input type="text" name="uname" class="fielditem"></div><br>
			<div>Password:&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass" class="fielditem"></div><br>
			<div align="center"><input type="submit" name="sub" id="submit1" value=""></div>
            </p>
			</form>
            </div>
			<div style="border:21px solid orange;">
			<h2 style="font-family:verdana;font-size:15px;">Patient Login</h2>
  <img src="images/patient_icon.jpg" alt="" width="82" height="68" class="box_img" title="" />
             <form action="patientlogininsert.jsp" name="f2" method="get" onSubmit="return validat();">    
            <p align="center">         
             <div>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="empid" class="fielditem"></div><br>
			<div>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" class="fielditem"></div><br>
			<div align="center"><input type="submit" name="sub" id="submit2" value=""> &nbsp;&nbsp;<a href="indoor.jsp"><font size="2">New Patient</font></a></div>
            </p>
			</form>
            </div>   
			
			<div style="border:21px solid orange;">
			<h2 style="font-family:verdana;font-size:15px;">Pharmacy Login</h2>
  <img src="images/pharmacy.jpg" alt="" width="82" height="68" class="box_img" title="" />
             <form action="pharmacylogininsert.jsp" name="f3" method="get" onSubmit="return validate();">    
            <p align="center">         
             <div>Email-ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phaid" class="fielditem"></div><br>
			<div>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" class="fielditem"></div><br>
			<div align="center"><input type="submit" name="sub" id="submit3" value=""></div>
            </p>
			</form>
            </div>   
                   
            
            
        </div><!--end of right content-->


    
    <div style=" clear:both;"></div>
    </div><!--end of main content-->
 

     <div id="footer">
     	 <div id="menu">
            <ul>  
			                                     
                <li><a class="current" href="index.jsp" title="">Home</a></li>
                <li><a href="adminlogin.jsp" title="">Admin Login</a></li>
                <li><a href="doctorlogin.jsp" title="">Doctor Login</a></li>
                <li><a href="patientlogin.jsp" title="">Patient Login</a></li>
                 <li><a href="pharmacylogin.jsp" title="">Pharmacy Login</a></li>
            </ul>
        </div>
        
        </div>
    
    
    </div>  
 
   

</div> <!--end of main container-->
</body>
</html>

