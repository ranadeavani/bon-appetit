<%@ page import ="java.sql.*" %>

	

<%
 //String[] quant;
//quant=request.getParameterValues("qty");  
//int i=0;
//while(i<2)
//{
//if(Integer.parseInt(quant[i])>0)
//{
//out.println(quant[i]);
//}
//i++;
//}
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");  
    String query="select sum(bill_details.quantity*item.price) as total from bill_details join item on bill_details.item_id=item.item_id where Bill_ID=1";
    Statement stmt;
    stmt = con.createStatement();              
    ResultSet rs = stmt.executeQuery(query);

      
     while(rs.next())
       {
  
          out.println(rs.getString("total"));

   
       }

%>