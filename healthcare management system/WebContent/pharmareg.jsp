<%@page import="databaseconnection.databasecon"%>
<%@ page import="java.sql.*,java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	


	ResultSet rs1=null;
	int x=1;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(phaid) from pharmacist";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(01)==00)
		x=01;
		else
		x=rs1.getInt(01)+1;
		session.setAttribute("phaid",x);
		System.out.println(x);
		
		}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add New Employee</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<Script language="JavaScript" src="validate.js">
</Script>
<script language="JavaScript">
function valid()
{
var a = document.f.phaname.value;
var b = document.f.phauname.value;
var c = document.f.phapwd.value;
var d = document.f.phaqua.value;
var e = document.f.phades.value;
var f = document.f.phaemail;
var g = document.f.phamobile.value;
var h = document.f.phacity.value;
var i = document.f.phadob.value;
var j = document.f.phasal.value;
var k = document.f.phaaddress.value;
var l = document.f.phagender.value;

if(a=="")
{
alert("Enter Your Name");
document.f.phaname.value;
return false;
}
if(!isNaN(a))
{
alert("Enter Character Only");
document.f.phaname.value;
return false;
}
if(b=="")
{
alert("Enter Your Username");
document.f.phauname.value;
return false;
}
if(c=="")
{
alert("Enter Your Password");
document.f.phapwd.value;
return false;
}
if(d=="")
{
alert("Enter Your Qualification");
document.f.phaqua.value;
return false;
}
if(e=="")
{
alert("Enter Your Designation");
document.f.phades.value;
return false;
}
if (f.value == "")
{
window.alert("Please enter a valid e-mail address.");
f.focus();
return false;
}
if (f.value.indexOf("@", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
f.focus();
return false;
}
if (f.value.indexOf(".", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
f.focus();
return false;
}
if(g=="")
    {
        alert("Please enter the Mobile number");
			document.f.phamobile.focus();
        return false;
    }
	if(isNaN(g))
    {
        alert("Please enter the Correct Mobile number");
			document.f.phamobile.focus();
        return false;
    }
	 if (g.length!=10)
           {
                alert("Enter 10 Integers");
				document.f.phamobile.focus();
                return false;
           }
if(h=="")
{
alert("Enter Your City");
document.f.phacity.value;
return false;
}	
if(i=="")
{
alert("Enter Your Date of Birth");
document.f.phadob.value;
return false;
}	

if(j=="")
{
alert("Enter Your Salary");
document.f.phasal.value;
return false;
}	
if(isNaN(j))
{
alert("Enter Integer Only");
document.f.phasal.value;
return false;
}		   
if(k=="")
{
alert("Enter Your Address");
document.f.phaaddress.value;
return false;
}	
if(l=="")
{
alert("Enter Your Gender (Male or Female)");
document.f.phagender.value;
return false;
}
}		
</Script>
</head>

<body>
<div id="main_container">
	<div id="header">
    	<div id="logo">
		 
      <div style="position:absolute; left:550px; top:60px;"><font color="#FF9900" size="5"><strong>Health Care Management System</strong></font> </div>
		&nbsp;&nbsp;<img src="images/logo.jpg" width="250" height="150" align="right">
		</div>
        
        <div id="menu">
            <ul>                                        
                <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="pharmareg.jsp" title="">Pharmacist Register</a></li>
                <li><a href="pharmacistdetails.jsp" title="">View Pharmacist</a></li>
               
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
                <li><a href="pharmareg.jsp" title="">Pharmacist Register</a></li>
                <li><a href="pharmacistdetails.jsp" title="">View Pharmacist</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	<form name="f" method="post" action="pharmareg1.jsp" onSubmit="return valid()">
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add New Pharmacist</h2>
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Pharmacist ID:</td>
	<td><input type="text" name="phaid" value="<%=x%>" class="fielditem" ></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Pharmacist Name:</td>
	<td><input type="text" name="phaname" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">User Name:</td>
	<td><input type="text" name="phauname" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Password:</td>
	<td><input type="password" name="phapwd" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Qualification:</td>
	<td><input type="text" name="phaqua" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Designation:</td>
	<td><input type="text" name="phades" class="fielditem"></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">Email Id:</td>
	<td><input type="text" name="phaemail" class="fielditem"></td>
	</tr>
	<tr>
	<td height="33" class="paragraping">Mobile:</td>
	<td><input type="text" name="phamobile" class="fielditem"></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">City:</td>
	<td><input type="text" name="phacity" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">DOB:</td>
	<td><input type="text" name="phadob" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Salary:</td>
	<td><input type="text" name="phasal" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Address:</td>
	<td><input type="text" name="phaaddress" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Gender:</td>
	<td><input type="text" name="phagender" class="fielditem"></td>
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
	
	 <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>

	 <div id="footer">
     	 <div id="menu">
            <ul>                                        
                 <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="pharmareg.jsp" title="">Pharmacist Register</a></li>
                <li><a href="pharmacistdetails.jsp" title="">View Pharmacist</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

