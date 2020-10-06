<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Purchased Medicine Details</title>
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
        "  Its rich Medical Store serves to the purpose of the medicines of the patients who visit this hospital. The medical store currently is facing problems in maintaining its inventory and keeping its relations up-to-date with its suppliers. The Medical Store issues medicines to the patients and also receives the unused medicines in good condition from the patients to minimize wastage. With increasing number of patients this record keeping has become a burden and is no longer sustainable with the current manual system. It, therefore, badly needs an improved and efficient computerized system for maintaining its Inventory, Issue, and purchase activities etc." 
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
	
	<h2 align="center" style="font-family:verdana;font-size:14px;">New Purchased Medicine Details </h2>
	<table align="center" width="900" style="border:21px solid orange;">
	<tr class="button3">
	
	<th width="66" height="31" align="left"><font color="#990000">Item Id</font></th>
	  <th width="112" align="left"><font color="#990000">Item Name</font></th>
	  
	  
      <th width="94" align="left"> <font color="#990000">Company Name</font></th>
	  <th width="147" align="left"><font color="#990000">Description</font></th>
		
      <th width="63" align="left"> <font color="#990000">Unit Count</font></th>
	  <th width="59" align="left"> <font color="#990000">Unit Price</font></th>
	   <th width="83" align="left"> <font color="#990000">Total Amount</font></th>
	    <th width="103" align="left"> <font color="#990000">Sales Person</font></th>
		<th width="93" align="left"> <font color="#990000">Date</font></th>
	      
	</tr>
	<%
Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String iid = null,iname = null,icompany = null,ides=null,icount = null,iprice = null,itotal = null,isalesperson=null,date=null;
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("select * from medicine");
	     
	   rs = stmt.executeQuery();
while (rs.next())  {

	      iid=rs.getString("iid");
		   iname=rs.getString("iname");
		   
		  
		   icompany=rs.getString("icompany");
		   ides=rs.getString("ides");
		   icount=rs.getString("icount");
		   iprice=rs.getString("iprice");
		   itotal=rs.getString("itotal");
		   isalesperson=rs.getString("isalesperson");
		   date=rs.getString("date");
		  %>
		  <tr>
		 <td class="paragraping1"> 
		    <%=iid%>
		</td>
		<td class="paragraping1"> 
		    <%=iname%>
		</td>
		
		<td class="paragraping1">
		    <%=icompany%>
		</td>
		<td class="paragraping1">
			<%=ides%>
		</td>
		<td class="paragraping1"> 
		    <%=icount%>
		</td>
		<td class="paragraping1"> 
		    <%=iprice%>
		</td>
		
		<td class="paragraping1">
		    <%=itotal%>
		</td>
		<td class="paragraping1">
		    <%=isalesperson%>
		</td>
		<td class="paragraping1">
		    <%=date%>
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

