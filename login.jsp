<%@ page import="java.sql.*" %>
<% 
   String username=request.getParameter("user1");
   String pass=request.getParameter("pwd1");
   try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
     Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from registerForm"); 
      int c=0;
      while(rs.next()){
        if(username.equals(rs.getString(1)) && pass.equals(rs.getString(7))){
           c=1;  
        }
      }
      if(c==1){
       %>
        <script>
          alert("Login Successful!!");
          window.location.href = "pro.jsp";
          </script> 
        <%  
        session.setAttribute("username",username);
      }
        else{
       %> <script>
         alert("Invalid username and password!!");
         window.location.href = "login.html";
         </script>
         <%  
         
        }
        
   }
   
   catch(Exception e){
      out.print(e);
   }
   
%>