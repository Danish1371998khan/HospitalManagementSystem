<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Patient Details</title>
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
               
                <li><a href="indoordetails.jsp" title="">View Patients</a></li>
               
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
               
                <li><a href="indoordetails.jsp" title="">View Patients</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	
	<h2 align="center" style="font-family:verdana;font-size:14px;">Patient Ward & Room Details</h2>
	<table align="center" width="900" style="border:21px solid orange;">
	<tr class="button3">
	
	<th width="55" height="31" align="left"><font color="#990000">Patient Id</font></th>
	  <th width="102" align="left"><font color="#990000">Patient Name</font></th>
	  
	  
      <th width="35" align="left"> <font color="#990000">Ward No</font></th>
	  <th width="63" align="left"><font color="#990000">Ward Type</font></th>
		
      <th width="90" align="left"> <font color="#990000">Room No</font></th>
	  <th width="76" align="left"> <font color="#990000">Room Type</font></th>
	   <th width="79" align="left"> <font color="#990000">Bed No</font></th>
	   
	      
	</tr>
	<%
Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String pid = null,pname = null,wardno=null,wardtype=null,roomno=null,roomtype=null,bed=null;
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("select * from patient where disstatus like 'Process';");
	     
	   rs = stmt.executeQuery();
while (rs.next())  {

	      pid=rs.getString("pid");
		   pname=rs.getString("pname");
		   
		  
		   wardno=rs.getString("wardno");
		   wardtype=rs.getString("wardtype");
		   roomno=rs.getString("roomno");
		   roomtype=rs.getString("roomtype");
		   bed=rs.getString("bed");
		  
		  %>
		  <tr>
		 <td class="paragraping1"> 
		    <%=pid%>
		</td>
		<td class="paragraping1"> 
		    <%=pname%>
		</td>
		
		<td class="paragraping1">
		    <%=wardno%>
		</td>
		<td class="paragraping1">
			<%=wardtype%>
		</td>
		<td class="paragraping1"> 
		    <%=roomno%>
		</td>
		<td class="paragraping1"> 
		    <%=roomtype%>
		</td>
		
		<td class="paragraping1">
		    <%=bed%>
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
               
                <li><a href="indoordetails.jsp" title="">View Patients</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

