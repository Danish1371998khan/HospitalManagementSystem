<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Doctor Details</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<Script language="JavaScript" src="validate.js">
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
                <li><a href="employee.jsp" title="">Employee Register</a></li>
                <li><a href="employeedetails.jsp" title="">View Employees</a></li>
               
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
                <li><a href="doctorreg.jsp" title="">Doctor Register</a></li>
                <li><a href="doctordetails.jsp" title="">View Doctors</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	
	<h2 align="center" style="font-family:verdana;font-size:14px;">New Employee Details</h2>
	<table align="center" width="900" style="border:21px solid orange;">
	<tr class="button3">
	
	<th width="160" height="31" align="left"><font color="#990000">Employee Id</font></th>
	  <th width="140" align="left"><font color="#990000">Employee Name</font></th>
	  
	  
      <th width="125" align="left"> <font color="#990000">Qualification</font></th>
	  <th width="126" align="left"><font color="#990000">Designation</font></th>
		
      <th width="85" align="left"> <font color="#990000">Email</font></th>
	  <th width="70" align="left"> <font color="#990000">Mobile No</font></th>
	   <th width="86" align="left"> <font color="#990000">City</font></th>
	    <th width="72" align="left"> <font color="#990000">Address</font></th>
	      
	</tr>
	<%
Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String eid = null,ename = null,qua = null,des=null,email = null,mobile = null,city = null,address=null;
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("select * from employee");
	     
	   rs = stmt.executeQuery();
while (rs.next())  {

	      eid=rs.getString("eid");
		   ename=rs.getString("ename");
		   
		  
		   qua=rs.getString("qua");
		   des=rs.getString("des");
		   email=rs.getString("email");
		   mobile=rs.getString("mobile");
		   city=rs.getString("city");
		   address=rs.getString("address");
		  %>
		  <tr>
		 <td class="paragraping1"> 
		    <%=eid%>
		</td>
		<td class="paragraping1"> 
		    <%=ename%>
		</td>
		
		<td class="paragraping1">
		    <%=qua%>
		</td>
		<td class="paragraping1">
			<%=des%>
		</td>
		<td class="paragraping1"> 
		    <%=email%>
		</td>
		<td class="paragraping1"> 
		    <%=mobile%>
		</td>
		
		<td class="paragraping1">
		    <%=city%>
		</td>
		<td class="paragraping1">
		    <%=address%>
		</td>
 
		</tr>
         <%
	   }
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
	

	</table>
	 <div id="footer">
     	 <div id="menu">
            <ul>                                        
                 <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="employee.jsp" title="">Employee Register</a></li>
                <li><a href="employeedetails.jsp" title="">View Employees</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

