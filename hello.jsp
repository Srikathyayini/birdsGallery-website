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
    table{
        width:100%;
        font-size:18px;
        text-align:center;
    }
    th{
         background-color:black;
         color:white;
    }
</style>
<body>
 <%   String name=(String)session.getAttribute("username");  %>
<center> 
  <br> <hr> <br> <h1><b>My Booking slots</b></h1></center>
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
                         if(name.equals(rs3.getString(1))){
                            out.print("<tr>");
                            out.print("<td>"+rs3.getString(1)+"</td>");
                            out.print("<td>"+rs3.getString(2)+"</td>");
                            out.print("<td>"+rs3.getString(3)+"</td>");
                            out.print("<td>"+rs3.getString(4)+"</td>");
                              out.print("</tr>");
                        }
                       
                        }
          
                }    
                 catch (Exception e) {
                    out.print(e);
                } 
                
            %>
        </tbody>
    </table>
    
</body>
</html>