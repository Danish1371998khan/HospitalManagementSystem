<%@ page import="java.sql.*,databaseconnection.*"%>

<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*"  errorPage="Error.jsp"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("pid");
	System.out.println(a);
	String b = request.getParameter("pname");
	//String n = request.getParameter("ptype");
	String c = request.getParameter("wardno");
	String d = request.getParameter("wardtype");
	String e = request.getParameter("roomno"); 
	String f = request.getParameter("roomtype");
	String g = request.getParameter("dischargedate");
	



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","admin");
ps=con.prepareStatement("INSERT INTO discharge(pid,pname,wardno,wardtype,roomno,roomtype,dischargedate,status)VALUES(?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
//ps.setString(3,n);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,"Discharged");



int s = ps.executeUpdate();



con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
	   <%

	String fid1=request.getParameter("pid");
    String serverstatus ="Discharged";
		
										
				try{
				Connection	conn=databasecon.getconnection();
				PreparedStatement ps1=conn.prepareStatement("Update patient set disstatus=? where pid='"+fid1+"'");
				ps1.setString(1,serverstatus);
				int x=ps1.executeUpdate();
				
				response.sendRedirect("indoordetails.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
	
		
	
 %>
