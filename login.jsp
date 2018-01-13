
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");  
 
Statement st=con.createStatement();  
    ResultSet rs;
    rs = st.executeQuery("select * from user where username='" + username + "' and pwd='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        response.sendRedirect("home.jsp");
        //out.println("<a href='logout.jsp'>Log out</a>");
        
        out.println("welcome " + username);
       
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
