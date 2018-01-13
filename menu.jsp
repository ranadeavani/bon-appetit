
<%@ page import ="java.sql.*" %>

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
<form action="index.jsp" method="post" >

<table border="2">
   <tr>
        <td>item_id</td>
        <td>price</td>
        <td>item_name</td>
        <td>Quantity</td>
        <td>picture</td>
        <td>Enter quantity</td>
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");  
 
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from item");  
       
       while(rs.next())
       {
   %>
           <tr>
           <td><%out.println(rs.getString("item_id")); %></td>
           <td><%out.println(rs.getDouble("price")); %></td>
           <td><%out.println(rs.getString("item_name")); %></td>
           <td><%out.println(rs.getInt("quantity")); %></td>
           <td><%out.println(rs.getString("picture")); %></td>
           <td><input type='text' name='qty[]' id='qty[]' /><input type='hidden' name='tqty[]' id='tqty[]' value='$tqty' /><input type='hidden' name='item[]' id='item[]' value='$id' /></td>
           </tr>

   <%
       }
   %>
   </table>
   <%
        con.close(); 
   }
   catch(Exception e)
   {
        System.out.println(e);
   }
   %>
   <input type="submit" name="order" value="Order" />
</form>

    </body>
</html>
<script>
function check(){
var i=0;

var a=document.getElementsByName("qty[]");
var n=a.length;
while(i<n){
  var qty=document.getElementsByName("qty[]")[i].value;
  var tqty=document.getElementsByName("tqty[]")[i].value;
  //alert(tqty);
  if(tqty<qty){
    alert('invalid quantity selected');
    return false;
  }
  i++;
}
return true;
}
</script>















