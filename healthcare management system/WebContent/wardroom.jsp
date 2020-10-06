<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add New Employee</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<Script language="JavaScript" src="validate.js">
</Script>
<script language="JavaScript">
function valid()
{
var a = document.f.pname.value;
var b = document.f.wardno.value;
//var c = document.f.wardtype;
var d = document.f.roomno.value;
//var e = document.f.roomtype.value;
var f = document.f.bed.value;


if(a=="")
{
alert("Enter Your Name");
document.f.pname.value;
return false;
}
if(!isNaN(a))
{
alert("Enter Character Only");
document.f.pname.value;
return false;
}
if(b=="")
{
alert("Enter Your Ward No");
document.f.wardno.value;
return false;
}
{
if(document.f.wardtype.selectedIndex==0)
{ 
alert("Please select your Ward Type");
document.f.wardtype.focus();
return false;
}

if(d=="")
{
alert("Enter Your Room No");
document.f.roomno.value;
return false;
}
if(document.f.roomtype.selectedIndex==0)
{ 
alert("Please select your Room Type");
document.f.roomtype.focus();
return false;
}


if(f=="")
    {
        alert("Please enter the Bed Details");
			document.f.bed.focus();
        return false;
    }
	
}
</Script>
</head>

<body>

<%

String pid=request.getParameter("pid");
session.setAttribute("pid",pid);
String pname=request.getParameter("pname");
session.setAttribute("pname",pname);
String age=request.getParameter("age");
session.setAttribute("age",age);
String gender=request.getParameter("gender");
session.setAttribute("gender",gender);
String fathername=request.getParameter("fathername");
session.setAttribute("fathername",fathername);
String city=request.getParameter("city");
session.setAttribute("city",city);
String dob=request.getParameter("dob");
session.setAttribute("dob",dob);
String mobile=request.getParameter("mobile");
session.setAttribute("mobile",mobile);
String address=request.getParameter("address");
session.setAttribute("address",address);
String uname=request.getParameter("uname");
session.setAttribute("uname",uname);
String password=request.getParameter("password");
session.setAttribute("password",password);
String disease=request.getParameter("disease");
session.setAttribute("disease",disease);
String admitteddate=request.getParameter("admitteddate");
session.setAttribute("admitteddate",admitteddate);
%>
<div id="main_container">
	<div id="header">
    	<div id="logo">
		 
      <div style="position:absolute; left:550px; top:60px;"><font color="#FF9900" size="5"><strong>A Hospital Information System</strong></font> </div>
		&nbsp;&nbsp;<img src="images/download" width="250" height="150" align="right">
		</div>
        
        <div id="menu">
            <ul>                                        
              <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="wardroom.jsp" title="">Ward & Room </a></li>
                <li><a href="wardroomdetails.jsp" title="">View Ward & Room Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
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
               <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="wardroom.jsp" title="">Ward & Room </a></li>
                <li><a href="wardroomdetails.jsp" title="">View Ward & Room Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	<form name="f" method="post" action="indoor1.jsp" onSubmit="return valid();">
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add Patient Ward And Room Details</h2>
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Patient ID:</td>
	<td><input type="text" name="pid" value="<%=pid%>"  class="fielditem" ></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Patient Name:</td>
	<td><input type="text" name="pname" value="<%=pname%>" class="fielditem"></td>
	</tr>
	
	
	<td><input type="hidden" name="age" value="<%=age%>"  class="fielditem"></td>
	
	
	
	<td><input type="hidden" name="gender" value="<%=gender%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="fathername" value="<%=fathername%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="city" value="<%=city%>" class="fielditem"></td>
	
	<td><input type="hidden" name="dob" value="<%=dob%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="mobile" value="<%=mobile%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="address" value="<%=address%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="uname" value="<%=uname%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="password" value="<%=password%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="disease" value="<%=disease%>" class="fielditem"></td>
	
	
	<td><input type="hidden" name="admitteddate" value="<%=admitteddate%>" class="fielditem"></td>
	
	<tr>
	<td height="36" class="paragraping">Ward Number:</td>
	<td><input type="text" name="wardno" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Ward Type:</td>
	<td><select name="wardtype" class="fielditem">
	<option value="0">Select Ward Type</option>
	<option value="General">General</option>
	<option value="Emergency">Emergency</option>
	</select></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Room Number:</td>
	<td><input type="text" name="roomno" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Room Type:</td>
	<td><select name="roomtype" class="fielditem">
	<option value="0">Room Type</option>
	<option value="AC">AC</option>
	<option value="Deluxe">Deluxe</option>
	<option value="Premium">Premium</option>
	<option value="General">General</option></select></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">Bed No:</td>
	<td><input type="text" name="bed" class="fielditem"></td>
	</tr>
	
	<tr>
	<td height="34" class="paragraping"></td>
	<td><input type="submit" name="sub" value="" id="submit3">&nbsp;&nbsp;<input type="reset" name="clear" value="" id="clear"></td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	</form>

	 <div id="footer">
     	 <div id="menu">
            <ul>                                        
                <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="wardroom.jsp" title="">Ward & Room </a></li>
                <li><a href="wardroomdetails.jsp" title="">View Ward & Room Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

