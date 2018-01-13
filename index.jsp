     
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
</style>


</head>
<body background="2.jpg">
    <a href="newlogin.jsp" class="button"><b>Already a user? Sign in</b></a>
<a href="register.jsp" class="button"><b>Sign Up</b></a>
<br><br><br><br><br>
<center><p class="shine">Bon appetit</p></center>

<br><br><br><br><br>

</body>
</html>
