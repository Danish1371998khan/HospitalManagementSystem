<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add New Patient Account</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<Script language="JavaScript" src="validate.js">
</Script>
<Script language="JavaScript">
    function checkForm()
	{
        if(!checkEmpty(document.gra.EmpId1))
		{
            return false;
		}
        if(!checkEmpty(document.gra.ename))
		{
            return false;
		}
 if(!checkEmpty(document.gra.did))
		{
            return false;
		}
 if(!checkEmpty(document.gra.den))
		{
            return false;
		}

        if(!checkEmpty(document.gra.Gra))
		{
            return false;
		}

        if(!checkEmpty(document.gra.sal))
		{
            return false;
		}
        if(!confirm("Are you sure do you want to submit"))
        {
            return false;
        }

	}
</Script>

<script>

    function calculate() {
    var remainingfee = parseInt(document.getElementById("remainingfee").value); 
    var payment = parseInt(document.getElementById("payment").value);
	 var balance = parseInt(document.getElementById("balance").value);
     document.getElementById("balance").value=(remainingfee - payment); 
   
}
</script>
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
                <li><a href="payment.jsp" title="">Add Payment</a></li>
                <li><a href="paymentdetails.jsp" title="">Payment Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
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
                <li><a href="payment.jsp" title="">Add Payment</a></li>
                <li><a href="paymentdetails.jsp" title="">Payment Details</a></li>
               
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
						Connection con1 = null;
						Statement st1 = null;
						ResultSet rs1 = null;
						String sql1 = "select pid,pname,total from account where pid='"+aa+"'";
						try {
							con1 = databasecon.getconnection();
							st1 = con1.createStatement();
							rs1 = st1.executeQuery(sql1);
							while (rs1.next()) {

								//String s1 = rs1.getString(2);
					%>
	<form name="gra" method="post" action="payment2.jsp" onSubmit="return checkForm()">
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add New Patient Account Details</h2>
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Patient ID:</td>
	<td><input type="text" name="pid" class="fielditem" value="<%out.println(rs1.getString(1));%>"></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Patient Name:</td>
	<td><input type="text" name="pname" class="fielditem" value="<%out.println(rs1.getString(2));%>"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Remaining Amount:</td>
	<td><input type="text" name="remainingfee" class="fielditem" id="remainingfee" value="<%out.println(rs1.getString(3));%>"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Payment:</td>
	<td><input type="text" name="payment" class="fielditem" id="payment" onKeyUp="calculate()"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Balance:</td>
	<td><input type="text" name="balance" id="balance" class="fielditem"></td>
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

						} catch (SQLException e1) {
							out.println("Your given didn't match to our database");
							System.out.println(e1);

						}

						finally {
							st1.close();
							con1.close();
						}
					%>
	 <div id="footer">
     	 <div id="menu">
            <ul>                                        
               <li><a href="admincontent.jsp" title="">Home</a></li>
                <li><a href="payment.jsp" title="">Add Payment</a></li>
                <li><a href="paymentdetails.jsp" title="">Payment Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

