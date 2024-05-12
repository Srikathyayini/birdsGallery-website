<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
</head>
<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}
  body{
     background: url(https://i.pinimg.com/originals/75/a6/a3/75a6a30f217051ec96226712929ef4ad.jpg);
        background-size: cover;
        background-repeat: no-repeat; 
        margin: 75px;
       padding: 0;
     background-image: fill 0 linear-gradient(rgba(153, 132, 132, 0.2),#312a2a);
  }
  table{
    width:750px;
     border-color: white;
     font-size:20px;
    background:linear-gradient(rgba(153, 132, 132, 0.2),#312a2a);
  }
  td{
    color:white;
  }
  span{
    font-size:20px;
  }
  .lbt{
    width: 120px;
    height: 50px;
    background: transparent;
    border: 2px solid #fff;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: #fff;
    font-weight: 500;
    margin-left: 35px;
    transition: .5s;
  }
  .barnav{
  background:black;
  
  padding-bottom: 0.5cm;
  padding-top: 0.2cm;
}
span{
    color:white;
    font-size:25px;
}
.lbt{
    float:right;
    width:98px;
    height:60px;
    transition:ease in .5s;
}
.lbt:hover{
    background:grey;
}
</style>
<body><span>Admin page</span>
  <a href="login.html"><button class="lbt"><b>Logout</b></button></a><br>
  <br>
  <hr>       
   <center> 
 <br>  <span><b>Users</b></span>
    <table border="1">
        <thead>
            <tr>
                <th>USERNAME</th>
                <th>FIRSTNAME</th>
                <th>LASTNAME</th>
                <th>GENDER</th>
                <th>EMAIL</th>     
            </tr>
        </thead>
        <tbody>
            <%    
                try {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
    Statement st=conn.createStatement();
       ResultSet rs1=st.executeQuery("select * from registerForm"); 
      
                       while (rs1.next()) {
          
                            out.print("<tr>");
                            out.print("<td>"+rs1.getString(1)+"</td>");
                            out.print("<td>"+rs1.getString(2)+"</td>");
                            out.print("<td>"+rs1.getString(3)+"</td>");
                            out.print("<td>"+rs1.getString(4)+"</td>");
                            out.print("<td>"+rs1.getString(6)+"</td>");
                            out.print("</tr>");
                        } 

                    }
                 catch (Exception e) {
                    out.print(e);
                } 
            %>
        </tbody>
    </table>
    </center>

   <center> 
  <br> <hr> <br> <span><b>Contact page</b></span>
  <br>  <table border="1">
        <thead>
            <tr>
                <th>USERNAME</th>
                <th>EMAIL</th>
                <th>MESSAGE</th>           
            </tr>
        </thead>
        <tbody>
            <%    
                try {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
    Statement st=conn.createStatement();
       ResultSet rs2=st.executeQuery("select * from contactpage"); 
      
                       while (rs2.next()) {
                            out.print("<tr>");
                            out.print("<td>"+rs2.getString(1)+"</td>");
                            out.print("<td>"+rs2.getString(2)+"</td>");
                            out.print("<td>"+rs2.getString(3)+"</td>");
                            out.print("</tr>");
                        } 
                    }
                 catch (Exception e) {
                    out.print(e);
                } 
            %>
        </tbody>
    </table>
    </center>
    <center> 
  <br> <hr> <br> <span><b>Booking slots</b></span>
  <br>  <table border="1">
        <thead>
            <tr>
                <th>UserName</th>
                <th>ServiceName</th>
                <th>Bookdate</th>
                <th>Booktime</th>           
            </tr>
        </thead>
        <tbody>
            <% 
            
                try {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","kathyayini");
    Statement st=conn.createStatement();     
       ResultSet rs3=st.executeQuery("select * from bookapp"); 
                       while (rs3.next()) {
                            out.print("<tr>");
                            out.print("<td>"+rs3.getString(1)+"</td>");
                            out.print("<td>"+rs3.getString(2)+"</td>");
                            out.print("<td>"+rs3.getString(3)+"</td>");
                            out.print("<td>"+rs3.getString(4)+"</td>");
                            out.print("</tr>");
                        } }
                    
                 catch (Exception e) {
                    out.print(e);
                } 
               
            %>
        </tbody>
    </table>
    </center>

</body>
</html>
