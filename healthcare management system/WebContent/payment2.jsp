<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("pid");
	String b = request.getParameter("pname");
	String c = request.getParameter("remainingfee");
	String d = request.getParameter("payment");
	String e = request.getParameter("balance"); 
	/*String f = request.getParameter("medfee");
	String g=request.getParameter("advfee");
	String h = request.getParameter("total"); */
	



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","admin");
ps=con.prepareStatement("INSERT INTO payment(pid,pname,remainingfee,payment,balance)VALUES(?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);



int s = ps.executeUpdate();
response.sendRedirect("accountdetails.jsp");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
	   <%

	String fid1=request.getParameter("pid");
	String fid2=request.getParameter("balance");
	
    //String serverstatus =null;
		
										
				try{
				Connection	conn=databasecon.getconnection();
				PreparedStatement ps1=conn.prepareStatement("Update account set balance=total where pid='"+fid1+"'");
				//ps1.setString(1,serverstatus);
				int x=ps1.executeUpdate();
				
				response.sendRedirect("account.jsp");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
	
		
	
 %>
