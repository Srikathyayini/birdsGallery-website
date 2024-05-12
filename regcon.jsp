<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head></head>
<body>
<%
   String un=request.getParameter("uname");
   String fn=request.getParameter("fname");
   String ln=request.getParameter("lname");
   String g=request.getParameter("gr");
   String ad=request.getParameter("address");  
   String em=request.getParameter("email");
   String pwd=request.getParameter("password");
   String cpwd=request.getParameter("cpassword");
    if(pwd.equals(cpwd)){
    try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
     PreparedStatement pst=con.prepareStatement("insert into registerForm values(?,?,?,?,?,?,?)");
      pst.setString(1,un);
      pst.setString(2,fn);
      pst.setString(3,ln);
      pst.setString(4,g);
      pst.setString(5,ad);
      pst.setString(6,em);
      pst.setString(7,pwd);
      int x=pst.executeUpdate();
        %> <script>
        alert("Registration successfully!!");
        </script>
        <%
    }catch(Exception e){
      out.print(e);
    }
    }else{
    out.print("Password doesnot matched");
   }

%>
</body>
</html>
