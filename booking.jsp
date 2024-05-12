<%@ page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Appointment</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background:linear-gradient(to top,yellow,skyblue,pink,white);
   
}
.container {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 1px 10px black;
}
label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
}
input[type="text"],
input[type="date"],
input[type="time"],
button {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
.option{
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
#availabilityMsg {
    margin-top: 10px;
    color: #ff0000;
    font-weight: bold;
}
body, ul {
    margin: 0;
    padding: 0;
}
/* Header styles */
header {
    background-color: black; /* Grey color */
    padding: 20px 0;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
.container1 {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.logo img {
    height: 40px;
}
nav ul {
    list-style: none;
}
nav ul li {
    display: inline;
    margin-left: 20px;
}
nav ul li a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
}
.user {
    color: white;
    margin-left: 500px;
}

</style>
<script src="https://kit.fontawesome.com/886949baed.js" crossorigin="anonymous"></script>

</head>
<body>
<header>
    <div class="container1">
        
        <nav>
            <ul>
                <li><a href="pro.jsp">Home</a></li>
                <li><a href="services.html">Services</a></li>
                <li><a href="contact .html">Contact</a></li>
                <li><a href="hello.jsp">my appointments</a></li>
                 <div class="user" id="user-btn"><i class="fa fa-user"></i>
                 <%   String name=(String)session.getAttribute("username");
               out.println(name);
%>
</div>
        </ul>
        </nav>
    </div>
</header>

<div class="container">
    <h2>Book Appointment</h2>
    <form id="appointmentForm" action="" method="post">
    <div>
            <label for="name">User Name:</label>
            <input type="text" id="usernam" name="usernam" required>
            <input type="hidden" name="username" value="<%=name%>">

        </div>
    <div>
            <label for="name">Service Name:</label>
            <select class="option" name="sername" required>
            <option value="Birds Training">Birds Training</option>
            <option value="Birds Rescue">Birds Rescue</option>
            <option value="Birds Feeding">Birds Feeding</option>
            <option value="Birds Boarding">Birds Boarding</option>
            <option value="Birds Checkups">Birds Checkups</option>
            <option value="Birds Treatment">Birds Treatment</option>
            
            <input type="hidden" name="username" value="<%=name%>">
           </select>
        </div>
        <div>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            <input type="hidden" name="username" value="<%=name%>">

        </div>
        <div>
            <label for="time">Select the below given timings only</br>
                              (9:00, 11:00, 13:00, 15:00, 17:00)</label>
            <input type="time" id="time" name="time" required>
        </div>
        <div id="availabilityMsg">
            <%
                  String user=request.getParameter("username");
                // Handle form submission and database interaction here
                if (request.getMethod().equals("POST")) {
                   String username=request.getParameter("usernam");
                    String servicename=request.getParameter("sername");
                    String date = request.getParameter("date");
                    String time = request.getParameter("time");
                   
                    try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","kathyayini");
                        String query = "SELECT * FROM bookapp WHERE username=? and servicename=? and bookdate = ? AND booktime = ?";
                        PreparedStatement pstmt = con.prepareStatement(query);
                      pstmt.setString(1,username);
                       pstmt.setString(2,servicename);
                        pstmt.setString(3, date);
                        pstmt.setString(4, time);
                        ResultSet rs3 = pstmt.executeQuery();
                       
                        if (!rs3.next()) {
                            query = "INSERT INTO bookapp values(?,?,?,?)";
                            pstmt = con.prepareStatement(query);
                            pstmt.setString(1,username);
                            pstmt.setString(2,servicename);
                            pstmt.setString(3, date);
                            pstmt.setString(4, time);
                            pstmt.executeUpdate();
                          %> <script>
                            alert("Appointment Booked successful!");
                            </script>  <%
                        } else {
                            out.print("Slot not available");
                        }
                        
                    } catch(Exception ex) {
                        out.println("<h1>" + ex + "</h1>");
                    }
                }
            %>
        </div>
        <button type="submit">Check Availability</button>
    </form>
</div>

</body>
</html>