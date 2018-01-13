<%@ page import ="java.sql.*" %>
<%
 String[] quant;
quant=request.getParameterValues("qty");
String address=request.getParameter("address");
//out.print(Integer.parseInt(quant[23]));
int i=0;
int j;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/bon","root","root");
Statement st=con.createStatement();  
    ResultSet rs;
    String k = "select MAX(Bill_ID) as id from bill_details";
    rs = st.executeQuery(k);
    int id2 = -1;
    if (rs.next()) {
   id2 = rs.getInt("id");
  
    }
    id2=id2+1;
    
    //out.print(id);
    int quanty;
    int pri;
   int subtotal;
   int ftotal=0;
   String username=(session.getAttribute( "username" ).toString());
       
        
       
   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400,900,700,500,300,100);
* {
  margin: 0;
  box-sizing: border-box;
}
body {
  background: #e0e0e0;
  font-family: "Roboto", sans-serif;
  background-image: url("");
  background-repeat: repeat-y;
  background-size: 100%;
}
::selection {
  background: #f31544;
  color: #fff;
}
::moz-selection {
  background: #f31544;
  color: #fff;
}
h1 {
  font-size: 1.5em;
  color: #222;
}
h2 {
  font-size: 0.9em;
}
h3 {
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p {
  font-size: 0.7em;
  color: #666;
  line-height: 1.2em;
}

#invoiceholder {
  width: 100%;
  hieght: 100%;
  padding-top: 50px;
}
#headerimage {
  z-index: -1;
  position: relative;
  top: -50px;
  height: 350px;
  background-image: url("header.jpg");

  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15),
    inset 0 -2px 4px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15),
    inset 0 -2px 4px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15),
    inset 0 -2px 4px rgba(0, 0, 0, 0.15);
  overflow: hidden;
  background-attachment: fixed;
  background-size: 1920px 80%;
  background-position: 50% -90%;
}
#invoice {
  position: relative;
  top: -290px;
  margin: 0 auto;
  width: 700px;
  background: #fff;
}

[id*="invoice-"] {
  /* Targets all id with 'col-' */
  border-bottom: 1px solid #eee;
  padding: 30px;
}

#invoice-top {
  min-height: 120px;
}
#invoice-mid {
  min-height: 120px;
}
#invoice-bot {
  min-height: 250px;
}

.logo {
  float: left;
  height: 60px;
  width: 60px;
  background: url("logo_1.jpg") no-repeat; //Change
  background-size: 60px 60px;
}
.clientlogo {
  float: left;
  height: 60px;
  width: 60px;
  background: url("") no-repeat; //Change
  background-size: 60px 60px;
  border-radius: 50px;
}
.info {
  display: block;
  float: left;
  margin-left: 20px;
}
.title {
  float: right;
}
.title p {
  text-align: right;
}
#project {
  margin-left: 52%;
}
table {
  width: 100%;
  border-collapse: collapse;
}
td {
  padding: 5px 0 5px 15px;
  border: 1px solid #eee;
}
.tabletitle {
  padding: 5px;
  background: #eee;
}
.service {
  border: 1px solid #eee;
}
.item {
  width: 50%;
}
.itemtext {
  font-size: 0.9em;
}

#legalcopy {
  margin-top: 30px;
}
form {
  float: right;
  margin-top: 30px;
  text-align: right;
}

.effect2 {
  position: relative;
}
.effect2:before,
.effect2:after {
  z-index: -1;
  position: absolute;
  content: "";
  bottom: 15px;
  left: 10px;
  width: 50%;
  top: 80%;
  max-width: 300px;
  background: #777;
  -webkit-box-shadow: 0 15px 10px #777;
  -moz-box-shadow: 0 15px 10px #777;
  box-shadow: 0 15px 10px #777;
  -webkit-transform: rotate(-3deg);
  -moz-transform: rotate(-3deg);
  -o-transform: rotate(-3deg);
  -ms-transform: rotate(-3deg);
  transform: rotate(-3deg);
}
.effect2:after {
  -webkit-transform: rotate(3deg);
  -moz-transform: rotate(3deg);
  -o-transform: rotate(3deg);
  -ms-transform: rotate(3deg);
  transform: rotate(3deg);
  right: 10px;
  left: auto;
}

.legal {
  width: 70%;
}
b{
    font-family: Bradley Hand ITC;
    font-size: 18px;
}
        </style>
    </head>
    <body>
        <div id="invoiceholder">

  <div id="headerimage"></div>
  <div id="invoice" class="effect2">

    <div id="invoice-top">
      <div class="logo"></div>
      <div class="info">
        <h2>Bon Apettite</h2>
        <p> bonapettite@gmail.com </br>
          
        </p>
      </div>
      <!--End Info-->
      <div class="title">
        <h1>Bill Number <%out.print(id2);%></h1>  
        
      

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = Date();
</script>


       
             
          
      </div>
      <!--End Title-->
    </div>
    <!--End InvoiceTop-->


    <div id="invoice-mid">

      <div class="clientlogo"></div>
      <div class="info">
          <h2><%out.print(username);%></h2>
          <p>Address:<br><%out.print(address);%></br>
          </br>
      </div>

      <div id="project">
        <h2></h2>
        <b>We're sure to deliver taste that will linger on your tongue forever! Delivery assured within 45 minutes of bill generation. The clock is ticking!  </b>
      </div>

    </div>
    <!--End Invoice Mid-->

    <div id="invoice-bot">


	


      <div id="table">
        <table>
          <tr class="tabletitle">
            <td class="item">
              <h2>Item Description</h2></td>
            <td class="Hours">
              <h2>Quantity</h2></td>
            <td class="Rate">
              <h2>Price</h2></td>
            <td class="subtotal">
              <h2>Sub-total</h2></td>
          </tr>

          <tr class="service">  
           
          <% while(i<24)
{
if(Integer.parseInt(quant[i])>0)
{
j=i+1;
int l = st.executeUpdate("insert into bill_details(Bill_ID, item_id, quantity) values ('"+id2+"','"+j+"','"+quant[i]+"')");
                      
 
 String q="select item.item_name as name,bill_details.quantity as qt,item.price as pc,sum(bill_details.quantity*item.price) as total from bill_details join item on bill_details.item_id=item.item_id where Bill_ID='"+id2+"' and bill_details.item_id='"+j+"'";
 
 Statement stmt;
 stmt = con.createStatement();              
 ResultSet res = stmt.executeQuery(q);
 
      
     while(res.next())
       {
   
       quanty=Integer.parseInt(res.getString("qt"));
       pri=Integer.parseInt(res.getString("pc"));
       subtotal=quanty*pri;
       ftotal=ftotal+subtotal;
       //ftotal=Integer.parseInt(res.getString("total"));
       %>
           

            <td class="tableitem">
             <p class="itemtext"><%out.print(res.getString("name"));%> </p>
            </td>
            <td class="tableitem">
                 
              <p class="itemtext"> <%out.print(res.getString("qt"));%></p>
            </td>
            <td class="tableitem">
              <p class="itemtext"><%out.print(res.getString("pc"));%></p>
            </td>
            <td class="tableitem">
              <p class="itemtext"><%out.print(subtotal);%></p>
            </td>
          </tr>
          <%         }
   
   }

i++;
}  
  int a = st.executeUpdate("insert into bill(Bill_ID, username, total,address) values ('"+id2+"','"+username+"','"+ftotal+"','"+address+"')");        
     %>
   

          <tr class="tabletitle">
            <td></td>
            <td></td>
            <td class="Rate">
              <h2>Total</h2></td>
            <td class="payment">
              <h2><%out.print(ftotal);%></h2></td>
          </tr>

        </table>
      </div>
      <!--End Table-->

      <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top"> 
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="QRZ7QTM9XRPJ6">
        <input type="image" src="http://michaeltruong.ca/images/paypal.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
      </form>


      <div id="legalcopy">
       
       
      </div>

    </div>
    <!--End InvoiceBot-->
  </div>
  <!--End Invoice-->
</div>
<!-- End Invoice Holder-->
    </body>
</html>
