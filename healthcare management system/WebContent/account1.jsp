<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("pid");
	String b = request.getParameter("pname");
	String c = request.getParameter("admitteddate");
	String d = request.getParameter("disdate");
	String e = request.getParameter("patfee"); 
	String f = request.getParameter("medfee");
	String g=request.getParameter("advfee");
	String h = request.getParameter("total");
	



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","admin");
ps=con.prepareStatement("INSERT INTO account(pid,pname,admitteddate,disdate,patfee,medfee,advfee,total)VALUES(?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);



int s = ps.executeUpdate();
response.sendRedirect("account.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
