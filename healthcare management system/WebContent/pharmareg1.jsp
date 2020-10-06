<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("phaid");
	String b = request.getParameter("phaname");
	String c = request.getParameter("phauname");
	String d = request.getParameter("phapwd");
	String e = request.getParameter("phaqua"); 
	String f = request.getParameter("phades");
	String g = request.getParameter("phaemail");
	String h = request.getParameter("phamobile");
	String i = request.getParameter("phacity");
	String j = request.getParameter("phadob");
	String k = request.getParameter("phasal");
	String l = request.getParameter("phaaddress");
	String m = request.getParameter("phagender");



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","admin");
ps=con.prepareStatement("INSERT INTO pharmacist(phaid,phaname,phauname,phapwd,phaqua,phades,phaemail,phamobile,phacity,phadob,phasal,phaaddress,phagender)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
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
response.sendRedirect("pharmareg.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
