<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("uname");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://database-1.ce3jmmfdbyd7.ap-south-1.rds.amazonaws.com:3306/test",
            "admin", "12345678");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USER where username='"+userName+"' and password='"+password+"'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
