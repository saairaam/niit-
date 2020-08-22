<head>
    <title>theWatchStore.</title>

<%@ page language="java" contentType="text/html"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <%-- <%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>  --%>
<%-- <%@include file="/WEB-INF/views/Footer.jsp" %>
 --%>
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

 

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<style type="text/css">
/* body  {
   background: url("resources/images1/indexback.jpg");
   background-size: cover;
   padding: 0;
   margin: 0;
}  
 */
.starter-template {
  padding: 3rem 1.5rem;
  text-align: center;
}
body > .container {
  padding: 60px 15px 0;
}
.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
}
code {
  font-size: 80%;
}
.fa {
    padding: 15px;
    font-size: 20px;
    width: 20px;
    text-align: center;
    text-decoration: none;
    border-radius: 40%;
}
#custom-search-input {
        margin:0;
        margin-top: 10px;
        padding: 0;
    }
 
    #custom-search-input .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    #custom-search-input button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        color:#D9230F;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }
@import url('https://fonts.googleapis.com/css?family=Poppins');
body{
    font-family: 'Poppins', sans-serif;
}
.search-text{
	
	/* background-color:#7dabdb;
	padding-top:60px;
	padding-bottom:60px; */
}
	
.search-text .input-search{
	height:40px;
	width:400px;
	padding-left:20px;
    color:#333;
} 
.search-text .btn-search{
	background-color:#7dabdb;
	border:1px solid #FFF;
	color:#FFF;
	padding: 11px 22px;
}
.search-text  .btn-search:hover{
	background-color:#FFF;
	color:#7dabdb;
}
</style>
 </head>

  <body>
   <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
      
     
<div>
			
					<a href="#" class=" fa fa-facebook"></a>
					<a href="#" class=" fa fa-instagram"></a>
					<a href="#" class=" fa fa-pinterest-p"></a>
					<a href="#" class=" fa fa-snapchat-ghost"></a>
					<a href="#" class=" fa fa-youtube-play"></a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp				
<a class="navbar-brand" href="<c:url value='/home'/>"><b><font color="black"><u>theWatchStore</font></u></b><font color="red">.</font></a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNow Get upto 80% Discount!
				</div>
				
 
 
 
   </nav>
    <nav class="navbar navbar-expand-md " style="background-color: #e3f2fd;"  >
 
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

<div class="container">
	<nav class="navbar navbar-default">
		<div class="">
			<div class="navbar-header">
				
			</div>
			<c:if test="${!sessionScope.loggedIn }">
			<ul class="nav navbar-nav">
				
				<li><a href="aboutus" class="glyphicon glyphicon-user"> About Us</a></li>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<li><a href="contactus" class="glyphicon glyphicon-earphone"> Contact Us</a></li>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<li><a href="register" class= "glyphicon glyphicon-user"> Sign Up</a></li>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<li><a href="login1" class= "glyphicon glyphicon-log-in"> Sign In</a></li>
			</ul>
			</c:if>
			<c:if test="${sessionScope.loggedIn }">
				
				<c:if test="${sessionScope.role=='ROLE_USER' }">
					<ul class="nav navbar-nav">
						 
						<li><a href="<c:url value="/displayProduct"/>" class="glyphicon glyphicon-th"> Product</a></li>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<li><a href="<c:url value="/viewcart"/>" class="glyphicon glyphicon-shopping-cart"> Cart</a></li>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<c:if test="${sessionScope.loggedIn }">
					<font color="black" class="glyphicon glyphicon-user"> ${sessionScope.username }</font><br>
					
					<a href="perform_logout" class="glyphicon glyphicon-log-out" > Sign Out</a>
				</c:if>
					</ul>
				</c:if>
			</c:if>
			
			<div class="nav navbar-nav navbar-right">
				
			</div>
			</div>
			</nav></div>
			</nav>
			
    
	    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
	
	
	
	      
</body>
</html>