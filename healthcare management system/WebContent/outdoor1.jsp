<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("oid");
	String b = request.getParameter("pname");
	String c = request.getParameter("age");
	String d = request.getParameter("gender");
	String e = request.getParameter("fathername"); 
	String f = request.getParameter("city");
	String g = request.getParameter("dob");
	String h = request.getParameter("mobile");
	String i = request.getParameter("address");
	String j = request.getParameter("uname");
	String k = request.getParameter("password");
	String l = request.getParameter("disease");
	String m = request.getParameter("admitteddate");



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
ps=con.prepareStatement("INSERT INTO outpatient(pid,pname,age,gender,fathername,city,dob,mobile,address,uname,password,disease,admitteddate)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.setString(9,i);
ps.setString(10,j);
ps.setString(11,k);
ps.setString(12,l);
ps.setString(13,m);


int s = ps.executeUpdate();
response.sendRedirect("outdoor.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
