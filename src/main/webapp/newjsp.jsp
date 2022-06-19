<%-- 
    Document   : newjsp
    Created on : 5 jun. 2022, 14:25:37
    Author     : lalop
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <h1>Hello World!</h1>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/alumno?user=root&password=1234");
                st = con.createStatement();
                rs = st.executeQuery("select * FROM Datos;");
                while (rs.next()) {
        %>
    <tr>
        <th><%=rs.getString(1)%></th>
        <th><%=rs.getString(2)%></th>
        <th><%=rs.getString(3)%></th>
    </tr> 
    <%
            }
        } catch (Exception e) {
            out.print("Error de mySQL"+e);
        }
    %>
</body>
</html>
