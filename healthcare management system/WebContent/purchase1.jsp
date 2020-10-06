<%@ page import="java.sql.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("iid");
	String b = request.getParameter("iname");
	String c = request.getParameter("icompany");
	String d = request.getParameter("ides");
	String e = request.getParameter("icount"); 
	String f = request.getParameter("iprice");
	String g = request.getParameter("itotal");
	String h = request.getParameter("isalesperson");
	String i = request.getParameter("date");
	



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
ps=con.prepareStatement("INSERT INTO medicine(iid,iname,icompany,ides,icount,iprice,itotal,isalesperson,date)VALUES(?,?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.setString(9,i);



int s = ps.executeUpdate();
response.sendRedirect("purchase.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
