<%@ page import="java.sql.*" errorPage="" %>
<%@ include file="db.jsp" %>	
<% String username = request.getParameter("uname");
   String password1 = request.getParameter("pass");
   String pesan ="[Hi have a good day, Your given Username and Password are incorrect,Please enter Correct Details]";

	
   boolean ada_kesalahan = false;
   try {
	Class.forName(driver);
	}
   catch (Exception ex) {
	out.println("error : " + ex);
	ada_kesalahan = true;
	}
   if (!ada_kesalahan) {
  
  	Connection koneksi = null;
	try {
		koneksi = DriverManager.getConnection (db, user, password);
		}
	catch (Exception ex) {
		out.println ("error : " + ex);
		}
	if (!ada_kesalahan) {
			ResultSet hasilQuery = null;
			String stSql = "SELECT uname,pass FROM admin WHERE uname = '" +username+"' AND pass = '"+password1+"'";
			
			try {
				PreparedStatement stm = koneksi.prepareStatement(stSql);
				hasilQuery = stm.executeQuery();
				}
			catch (Exception ex) {
				out.println("error : " + ex);
				ada_kesalahan = true;
			}
			
			
			if (!ada_kesalahan) {
				if(hasilQuery.next()){
					session.putValue("session_username",username);
					session.putValue("user_authorization","user_level_access");	
					
					response.sendRedirect("admincontent.jsp");
				} else {
					response.sendRedirect("index.jsp?msg=" +pesan);
					out.println("failed");
				}		
					
			}			
		}
	}
%>
