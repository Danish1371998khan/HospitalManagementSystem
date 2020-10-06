<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Health Care Management System</title>
<!--<script language="JavaScript">
javascript:window.history.forward(1);
</script> -->
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<style type="text/css">

/*Credits: Dynamic Drive CSS Library */
/*URL: http://www.dynamicdrive.com/style/ */

.suckerdiv ul{
margin: 0;
padding: 0;
list-style-type: none;
border-bottom: 1px solid #008040;
width: 250px; /* Width of Menu Items */
font-family:verdana;
font-size:15px;
font-color:green;
background-color:#FF9900;
}
	
.suckerdiv ul li{
position: relative;
font-family:verdana;
font-size:15px;
}
	
/*Sub level menu items */
.suckerdiv ul li ul{
position: absolute;
width: 250px; /*sub menu width*/
top: 0;
visibility: hidden;
font-family:verdana;
font-size:15px;
}

/* Sub level menu links style */
.suckerdiv ul li a{
display: block;
overflow: auto; /*force hasLayout in IE7 */
text-decoration: none;
font-family:verdana;
font-size:12px;
color:green;
background: #fff;
padding: 15px 15px;
border: 1px solid #ccc;
border-bottom: 0;
}

.suckerdiv ul li a:visited{
color: red;
}

.suckerdiv ul li a:hover{
background-color: #CCFF99;

}

.suckerdiv .subfolderstyle{
background: url(images/temp_side_menu_animg.gif) no-repeat center right;
}

	
/* Holly Hack for IE \*/
* html .suckerdiv ul li { float: left; height: 1%; }
* html .suckerdiv ul li a { height: 1%; }
/* End */

</style>

<script type="text/javascript">

//SuckerTree Vertical Menu 1.1 (Nov 8th, 06)
//By Dynamic Drive: http://www.dynamicdrive.com/style/

var menuids=["suckertree1"] //Enter id(s) of SuckerTree UL menus, separated by commas

function buildsubmenus(){
for (var i=0; i<menuids.length; i++){
  var ultags=document.getElementById(menuids[i]).getElementsByTagName("ul")
    for (var t=0; t<ultags.length; t++){
    ultags[t].parentNode.getElementsByTagName("a")[0].className="subfolderstyle"
		if (ultags[t].parentNode.parentNode.id==menuids[i]) //if this is a first level submenu
			ultags[t].style.left=ultags[t].parentNode.offsetWidth+"px" //dynamically position first level submenus to be width of main menu item
		else //else if this is a sub level submenu (ul)
		  ultags[t].style.left=ultags[t-1].getElementsByTagName("a")[0].offsetWidth+"px" //position menu to the right of menu item that activated it
    ultags[t].parentNode.onmouseover=function(){
    this.getElementsByTagName("ul")[0].style.display="block"
    }
    ultags[t].parentNode.onmouseout=function(){
    this.getElementsByTagName("ul")[0].style.display="none"
    }
    }
		for (var t=ultags.length-1; t>-1; t--){ //loop through all sub menus again, and use "display:none" to hide menus (to prevent possible page scrollbars
		ultags[t].style.visibility="visible"
		ultags[t].style.display="none"
		}
  }
}

if (window.addEventListener)
window.addEventListener("load", buildsubmenus, false)
else if (window.attachEvent)
window.attachEvent("onload", buildsubmenus)

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
               <li><a href="#" title="">Doctor Login</a></li>
                <li><a href="#" title="">Patient Login</a></li>
               <li><a href="#" title="">Pharmacy Login</a></li>
               
            </ul>
        </div>       
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
    	<div id="left_content">
        <h2>Welcome to Admin</h2>
        <p>
"The popularity of this hospital is gaining momentum day by day because of the state-of-the art facilities provided here to the patients."         
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
				<li><a href="#" title="">Ward & Rooms</a></li>
				
				
            </ul>
        </div>
        
            
        
        </div><!--end of left content-->



    	<div id="right_content">
        
        	 <h2 style="font-family:verdana;font-size:15px;">Admin Menu</h2><br>
        <div class="suckerdiv">
<ul id="suckertree1">
			  
          <li><a href="#">Purchase Medicine Transaction</a> 
            <ul>
              <li><a href="purchase.jsp">Add Purchese Medicine Details</a></li>
              <li><a href="purchasedetails.jsp">View Purchesed Medicine Details</a></li>
            </ul>
          </li>
          <li><a href="#">Add New Patient</a> 
            <ul>
              <li><a href="indoor.jsp">Add Indoor Patient Details</a></li>
              <li><a href="indoordetails.jsp">View Indoor Patient Details</a></li>
            </ul>
          </li>
		   
		    
          <li><a href="#">Add Ward & Rooms</a> 
            <ul>
              <li><a href="wardroomdetails.jsp">View Patients Ward & Room Details</a></li>
            </ul>
          </li>
		  
          <li><a href="#">Add New Doctor</a> 
            <ul>
              <li><a href="doctorreg.jsp">Add New Doctor Details</a></li>
              <li><a href="doctordetails.jsp">View Doctor Details</a></li>
            </ul>
          </li>
		   
		    
          <li><a href="#">Employee Details</a> 
            <ul>
              <li><a href="employee.jsp">Add Employee Details</a></li>
              <li><a href="employeedetails.jsp">View Employee Details</a></li>
            </ul>
          </li>
		  
          <li><a href="#">Add New Pharmacist</a> 
            <ul>
              <li><a href="pharmareg.jsp">Add Pharmacist Details</a></li>
              <li><a href="pharmacistdetails.jsp">View Pharmacist Details</a></li>
            </ul>
          </li>
          <li><a href="#">Add Accounting & Payment</a> 
            <ul>
              <li><a href="account.jsp">Add Account Details</a></li>
              <li><a href="accountdetails.jsp">View Account Details</a></li>
              <li><a href="paymentdetails.jsp">View Payment Details</a></li>
            </ul>
          </li>
          <li><a href="#">Add OPD(Outdoor Patient)</a> 
            <ul>
              <li><a href="outdoor.jsp">Add Outdoor Patient Details</a></li>
              <li><a href="outdoordetails.jsp">View Outdoor Patient Details</a></li>
            </ul>
          </li>
          <li><a href="#">Discharge</a> 
            <ul>
             
              <li><a href="dischargedetails.jsp">View Discharge Details</a></li>
            </ul>
          </li>
           </li>
         
          </li>
</ul>
</div>    
            
            
        </div><!--end of right content-->


    
    <div style=" clear:both;"></div>
    </div><!--end of main content-->
 

     <div id="footer">
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
    
    
    </div>  
 
</div> <!--end of main container-->
</body>
</html>

