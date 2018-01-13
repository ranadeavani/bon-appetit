        <%-- 
    Document   : registration
    Created on : Nov 25, 2017, 4:58:34 PM
    Author     : user
--%>

<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String username = request.getParameter("username"); 
    String city = request.getParameter("city");
    String pwd = request.getParameter("pwd");
    
    try{ 
    Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");  
 
Statement st=con.createStatement();
    
    //ResultSet rs;
    int i = st.executeUpdate("insert into user(fname, lname, username, city, pwd) values ('" + fname + "','" + lname + "','" + username + "','" + city + "','" + pwd + "')");
    
    if (i==1) {
        session.setAttribute("username", username);
        response.sendRedirect("newlogin.jsp");
        out.print("Registration Successfull!");
    } 
     else
    {
       //response.sendRedirect("index.jsp");
       
        }
    }
    catch(Exception e){ out.println("Username already exists, choose a new one!");}  

%>