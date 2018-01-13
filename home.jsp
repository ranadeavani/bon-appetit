
<% 
    if (session.getAttribute( "username" ) == null )
    {
        response.sendRedirect("index.jsp");
    }
   
  else
    {
  %>      
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title> Welcome|Bon Appetit</title>


<style type="text/css" media="all">
p.shine
{   font-family: monotype corsiva;
    font-size: 8em;
    margin: 0 auto;
    width: 800px;
}

.shine
{
    background: #222 -webkit-gradient(linear, left top, right top, from(#222), to(#222), color-stop(0.5, #fff)) 0 0 no-repeat;
    -webkit-background-size: 300px;
    
    color: rgba(255, 255, 255, 0.9);
    -webkit-background-clip: text;
    
    -webkit-animation-name: shine;
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: infinite;
}

@-webkit-keyframes shine
{
    0%
    {
        background-position: top left;
    }
    100%
    {
        background-position: top right;
    }
}

.button {
   background-color: transparent; 
    border: none;
    color: white;
    padding: 32px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 22px;
    font-family:Bradley Hand ITC;
    border-radius: 12px;
    
}


<!--
A:link { COLOR: white; TEXT-DECORATION: none; font-weight: normal }
A:visited { COLOR: white; TEXT-DECORATION: none; font-weight: normal }
A:active { COLOR: white; TEXT-DECORATION: none }
A:hover { COLOR: brown; TEXT-DECORATION: none; font-weight: none }
-->
b {
  float:right;
  
  font-family:Bradley Hand ITC;
 font-size:30px;
color: white;}

#bar {
  width: 370px;
  height: 90px;
  color: red;
  display: inline;
  float: left;
  margin-top: 35px;
}

.thing {
  width: 80px;
  height: 80px;
  color: whitesmoke;
  border: 5px black solid;
  border-radius: 46px;
  margin-top: 10px;
  margin-right: 10px;
  font-family: Bradley Hand ITC;
  font-size: 20px;
  font-weight: bold;
  

  -webkit-transition: all 0.5s ease-in-out;
  background-color: rgba(255,0,0,0.6);
     
}

.thing:hover {
  -webkit-transform: rotate(-360deg);
}

p {
  margin-left: 10px;
  margin-top: 20px;
}

</style>


</head>

<body background="10.jpg">
    <b> Hello, <%= session.getAttribute( "username" ) %> </b>
    <div class="thing"><p><center><a href="try.jsp">Order</a></center></p></div> /*Menu*/
    <div class="thing"><p><center>About Us</center></p></div>

<center><p class="shine">Bon appetit</p></center>
<br><br><br><br><br><br>
<div class="thing"><p><center>Contact Us</center></p></div>
<div class="thing"><p><a href="logout.jsp"><center>Logout </center></a></p></div>





</body>
</html>
<%
}
%>



