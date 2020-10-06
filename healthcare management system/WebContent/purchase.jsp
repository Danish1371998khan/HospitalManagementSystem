<%@page import="databaseconnection.databasecon"%>
<%@ page import="java.sql.*,java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">



<%@ page import="java.util.Date.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	


	ResultSet rs1=null;
	int x=1;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(iid) from medicine";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(01)==00)
		x=01;
		else
		x=rs1.getInt(01)+1;
		session.setAttribute("iid",x);
		System.out.println(x);
		
		}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Purchase Medicine</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<Script language="JavaScript" src="validate.js">
</Script>
<script language="JavaScript">
function validation()
{
var a = document.f.iname.value;
var b = document.f.icompany.value;
var c = document.f.ides.value;
var d = document.f.icount.value;
var e = document.f.iprice.value;
var f = document.f.itotal.value;

var g = document.f.isalesperson.value;
var h = document.f.date.value;


if(a=="")
{
alert("Enter Your Name");
document.f.iname.value;
return false;
}

if(b=="")
{
alert("Enter Your Company Name");
document.f.icompany.value;
return false;
}
if(c=="")
{
alert("Enter Your Description");
document.f.ides.value;
return false;
}
if(d=="")
{
alert("Enter Your Unit Count");
document.f.icount.value;
return false;
}
if(e=="")
{
alert("Enter Your Unit Price");
document.f.iprice.value;
return false;

}

if(f=="")
{
alert("Enter Your City");
document.f.itotal.value;
return false;
}	
if(g=="")
{
alert("Enter Your Sales Person Name");
document.f.isalesperson.value;
return false;
}	
   
if(h=="")
{
alert("Enter Your Date");
document.f.date.value;
return false;
}	
}
</Script>
<script>

    function calculate() {
    var icount = parseInt(document.getElementById("icount").value); 
    var iprice = parseInt(document.getElementById("iprice").value);
     document.getElementById("itotal").value=icount * iprice; 
   
}
</script>
</head>

<body>
<div id="main_container">
	<div id="header">
    	<div id="logo">
		 
      <div style="position:absolute; left:550px; top:60px;"><font color="#FF9900" size="5"><strong>Health Care Management System</strong></font> </div>
		&nbsp;&nbsp;<img src="images/download" width="250" height="150" align="right">
		</div>
        
        <div id="menu">
            <ul>                                        
               <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="purchase.jsp" title="">Purchase Medicine</a></li>
                <li><a href="purchasedetails.jsp" title="">View Purchased Medicine</a></li>
               
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
        "  Its rich Medical Store serves to the purpose of the medicines of the patients who visit this hospital.
		 The medical store currently is facing problems in maintaining its inventory and keeping its relations 
		 up-to-date with its suppliers. The Medical Store issues medicines to the patients and also receives the 
		 unused medicines in good condition from the patients to minimize wastage. With increasing number of patients
		  this record keeping has become a burden and is no longer sustainable with the current manual system. It, therefore,
		   badly needs an improved and efficient computerized system for maintaining its Inventory, Issue, and purchase activities etc." 
        </p>
       
       
        </div>
        
        <div id="right_nav">
            <ul>                                        
              <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="purchase.jsp" title="">Purchase Medicine</a></li>
                <li><a href="purchasedetails.jsp" title="">View Purchased Medicine</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add Purchase Medicine</h2>
	<form name="f" method="post" action="purchase1.jsp" onsubmit="return validation();">
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Item ID:</td>
	<td><input type="text" name="iid" value="<%=x%>" class="fielditem" ></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Item Name:</td>
	<td><input type="text" name="iname" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Company Name:</td>
	<td><input type="text" name="icompany" class="fielditem"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Description:</td>
	<td><input type="text" name="ides" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Unit Count:</td>
	<td><input type="text" name="icount" id="icount" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Unit Price:</td>
	<td><input type="text" name="iprice" id="iprice" class="fielditem" onkeyup="calculate()"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Total Price:</td>
	<td><input type="text" name="itotal" id="itotal"  class="fielditem"></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">Sales Person Name:</td>
	<td><input type="text" name="isalesperson" class="fielditem"></td>
	</tr>
	<tr>
	<td height="33" class="paragraping">Date:</td>
	<td><input type="text" name="date" class="fielditem"></td>
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
                <li><a href="purchase.jsp" title="">Purchase Medicine</a></li>
                <li><a href="purchasedetails.jsp" title="">View Purchased Medicine</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

