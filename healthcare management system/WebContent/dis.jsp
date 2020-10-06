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


<div id="main_container">
	<div id="header">
    	<div id="logo">
		 
      <div style="position:absolute; left:550px; top:60px;"><font color="#FF9900" size="5"><strong>Health Care Management System</strong></font> </div>
		&nbsp;&nbsp;<img src="images/download" width="250" height="150" align="right">
		</div>
        
        <div id="menu">
            <ul>                                        
              <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="discharge.jsp" title="">Update Discharge </a></li>
                <li><a href="dischargedetails.jsp" title="">View Discharge Details</a></li>
               
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
                <li><a href="discharge.jsp" title="">Update Discharge </a></li>
                <li><a href="dischargedetails.jsp" title="">View Discharge Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	<%
	String aa = request.getParameter("as");
						System.out.println(aa);
						//String bb=request.getParameter("bs");
						String name = (String) session.getAttribute("pname");
Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String pid = null,pname = null,age = null,gender=null,fathername = null,city = null,dob = null,mobile=null,address=null,disease=null,admitteddate=null;
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("select pid,pname,wardno,wardtype,roomno,roomtype from patient where pid='" + aa + "'");
	     
	   rs = stmt.executeQuery();
while (rs.next())  {

	    
		  %>
	/*<%
						/*String aa = request.getParameter("as");
						System.out.println(aa);
						//String bb=request.getParameter("bs");
						String name = (String) session.getAttribute("pname");
						Connection con = null;
						Statement st = null;
						ResultSet rs = null;
						String sql = "select pid,pname,wardtype,roomtype,dischargedate from patient where pid='" + aa + "' ";
						try {
							con = databasecon.getconnection();
							st = con.createStatement();
							rs = st.executeQuery(sql);
							while (rs.next()) {

								*///String s1 = rs1.getString(2);
					%> 
	<form name="f" method="post" action="dis2.jsp" onSubmit="return valid();">
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add Discharge Details</h2>
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Patient ID:</td>
	<td><%out.println(rs.getString(1));%></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Patient Name:</td>
	<td><%out.println(rs.getString(2));%></td>
	</tr>
	
	<tr>
	<td height="36" class="paragraping">Ward Number:</td>
	<td><%out.println(rs.getString(3));%></td>
	</tr>
	
	
	<tr>
	<td height="36" class="paragraping">Ward Type:</td>
	<td><%out.println(rs.getString(4));%></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Room Number:</td>
	<td><%out.println(rs.getString(5));%></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Room Type:</td>
	<td><%out.println(rs.getString(6));%></td>
	</tr>
	
	
	<tr>
	<td height="34" class="paragraping"></td>
	<td><a href="dis2.jsp?as=<%=rs.getString(1)%>&&cs=<%=rs.getString(2)%>"><font
										size="2" >Discharge</font></a></td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	</form>
  <%
	   }
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
	 <div id="footer">
     	 <div id="menu">
            <ul>                                        
                <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="discharge.jsp" title="">Update Discharge </a></li>
                <li><a href="dischargedetails.jsp" title="">View Discharge Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

