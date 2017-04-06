<%@tag description="Complex Wrapper Tag" pageEncoding="UTF-8"%>
<%@attribute name="title" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><jsp:invoke fragment="title" /></title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.3.1/css/bulma.min.css"></link>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></link>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/libs/bulma-templates/css/timeline.css" />
	<jsp:invoke fragment="header"/>	
</head>
<body>
	<nav class="nav has-shadow">
		<div class="container">
		  	<!-- This "nav-toggle" hamburger menu is only visible on mobile -->
	  		<!-- You need JavaScript to toggle the "is-active" class on "nav-menu" -->
		  	<span class="nav-toggle">
		    	<span></span>
		    	<span></span>
		    	<span></span>
		  	</span>
		  	
		  	<div class="nav-center">
		  		<a class="nav-item" href="${pageContext.request.contextPath}/admin">
		    		<h1 class="title">My Website</h1>
		      		<!-- <img src="http://bulma.io/images/bulma-logo.png" alt="Bulma logo"> -->
		    	</a>
		  	</div>
		</div>
	</nav>
	
	<section class="section main">
		<div id="app" class="container">
			<div class="columns">
				<div class="column is-6 is-offset-3">
					<jsp:doBody/>
				</div>
			</div>
		</div>
	</section>
</body>
</html>