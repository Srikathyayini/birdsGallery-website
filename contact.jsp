<%@ page import="java.sql.*" %>
<% 
   String name=request.getParameter("name");
   String em=request.getParameter("email");
   String msg=request.getParameter("message");
   try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
     PreparedStatement pst=con.prepareStatement("insert into contactpage values(?,?,?)");
      pst.setString(1,name);
      pst.setString(2,em);
      pst.setString(3,msg);
       int x=pst.executeUpdate();
         response.sendRedirect("pro.jsp"); 
    }catch(Exception e){
      out.print(e);
    }
%>