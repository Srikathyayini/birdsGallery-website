<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://static.thenounproject.com/png/37118-200.png"/>
    <title>Login in</title>
        <link rel="stylesheet" href="loginstyle.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/dist/boxicons.js" integrity="sha512-Dm5UxqUSgNd93XG7eseoOrScyM1BVs65GrwmavP0D0DujOA8mjiBfyj71wmI2VQZKnnZQsSWWsxDKNiQIqk8sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    
      <body>
         <p> <a href="admin.html"><b>Admin_login</b></a></p>
        <form action="" name="http" method="post">
        <div id="loginForm" class="wrap">
            <h1>User Login</h1>
            <div class="input-box">
              <input type="text" id="user1" name="user1" placeholder="Username" required>
              <i class="fa-regular fa-user"></i>
            </div>
            <div class="input-box">
              <input type="password" id="pwd1" name="pwd1" placeholder="Password" required><i class="fa-solid fa-lock"></i>
             
            </div>
           
         <button type="submit"  class="btn">Login</button>
            <p class="register">Not a member?  <a href="reg.html"><b>Register here!</b></a></p>
      </form>
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
       
 </body>
    
</html>