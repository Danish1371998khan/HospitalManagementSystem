<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("pid");
	String b = request.getParameter("pname");
	//String n = request.getParameter("ptype");
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
	String n = request.getParameter("wardno");
	String o = request.getParameter("wardtype");
	String p = request.getParameter("roomno");
	String q = request.getParameter("roomtype");
	String r = request.getParameter("bed");



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
ps=con.prepareStatement("INSERT INTO patient(pid,pname,age,gender,fathername,city,dob,mobile,address,uname,password,disease,admitteddate,wardno,wardtype,roomno,roomtype,bed,disstatus)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
//ps.setString(3,n);
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
ps.setString(14,n);
ps.setString(15,o);
ps.setString(16,p);
ps.setString(17,q);
ps.setString(18,r);
ps.setString(19,"Process");


int s = ps.executeUpdate();
response.sendRedirect("indoor.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
