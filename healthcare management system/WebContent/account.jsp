<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
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
        if(!checkEmpty(document.gra.pid))
		{
            return false;
		}
        if(!checkEmpty(document.gra.pname))
		{
            return false;
		}
 if(!checkEmpty(document.gra.admitteddate))
		{
            return false;
		}
 if(!checkEmpty(document.gra.disdate))
		{
            return false;
		}

        if(!checkEmpty(document.gra.patfee))
		{
            return false;
		}

        if(!checkEmpty(document.gra.medfee))
		{
            return false;
		}
		 if(!checkEmpty(document.gra.advfee))
		{
            return false;
		}
		 if(!checkEmpty(document.gra.total))
		{
            return false;
		}
        

	}
</Script>

<script>

    function calculate() {
    var patfee = parseInt(document.getElementById("patfee").value); 
    var medfee = parseInt(document.getElementById("medfee").value);
	 var advfee = parseInt(document.getElementById("advfee").value);
     document.getElementById("total").value=(patfee + medfee)-advfee; 
   
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
                <li><a href="account.jsp" title="">Add Account</a></li>
                <li><a href="accountdetails.jsp" title="">Account Details</a></li>
               
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
                <li><a href="account.jsp" title="">Add Account</a></li>
                <li><a href="accountdetails.jsp" title="">Account Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
	<form name="gra" method="post" action="account1.jsp" onSubmit="return checkForm()">
	<h2 align="center" style="font-family:verdana;font-size:15px;">Add New Patient Account Details</h2>
	<table align="center" width="900">
	<tr>
	<td valign="top">
	<table align="center" width="400" style="border:15px solid orange;">
	<tr>
	<td height="31" class="paragraping">Patient ID:</td>
	<td><input type="text" name="pid" class="fielditem" ></td>
	</tr>
	<tr>
	<td height="36" class="paragraping">Patient Name:</td>
	<td><input type="text" name="pname" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Admitted Date:</td>
	<td><input type="text" name="admitteddate" class="fielditem"></td>
	</tr>
	<tr>
	<td height="34" class="paragraping">Discharge Date:</td>
	<td><input type="text" name="disdate" class="fielditem"></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">Patient Fee:</td>
	<td><input type="text" name="patfee" id="patfee" class="fielditem"></td>
	</tr>
	<tr>
	<td height="33" class="paragraping">Medical Fee:</td>
	<td><input type="text" name="medfee" id="medfee" class="fielditem" onKeyUp="calculate()"></td>
	</tr>
	<tr>
	<td height="33" class="paragraping">Advance Fee:</td>
	<td><input type="text" name="advfee" id="advfee" class="fielditem" onKeyUp="calculate()"></td>
	</tr>
	<tr>
	<td height="32" class="paragraping">Remaining:</td>
	<td><input type="text" name="total" id="total" class="fielditem"></td>
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
                <li><a href="account.jsp" title="">Add Account</a></li>
                <li><a href="accountdetails.jsp" title="">Account Details</a></li>
               
				 <li><a href="signout.jsp" title="">Logout</a></li>
            </ul>
        </div>
        
        </div>
</div>    
</div> <!--end of main container-->
</body>
</html>

