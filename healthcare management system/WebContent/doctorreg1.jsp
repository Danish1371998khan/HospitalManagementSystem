<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("did");
	String b = request.getParameter("dname");
	String c = request.getParameter("duname");
	String d = request.getParameter("pwd");
	String e = request.getParameter("qua"); 
	String f = request.getParameter("des");
	String g = request.getParameter("email");
	String h = request.getParameter("mobile");
	String i = request.getParameter("city");
	String j = request.getParameter("dob");
	String k = request.getParameter("sal");
	String l = request.getParameter("address");
	String m = request.getParameter("gender");

       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
ps=con.prepareStatement("INSERT INTO doctor(did,dname,duname,pwd,qua,des,email,mobile,city,dob,sal,address,gender)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
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
response.sendRedirect("doctorreg.jsp");

con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
