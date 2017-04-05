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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/front/css/style.css" />
	<jsp:invoke fragment="header"/>	
</head>
<body>
	<nav class="nav has-shadow">
		<div class="container">
	  	<div class="nav-left">
	    	<a class="nav-item" href="${pageContext.request.contextPath}/admin">
	    		<h1 class="title">Pikar CMS</h1>
	      		<!-- <img src="http://bulma.io/images/bulma-logo.png" alt="Bulma logo"> -->
	    	</a>
	  	</div>
  		<!-- This "nav-toggle" hamburger menu is only visible on mobile -->
  		<!-- You need JavaScript to toggle the "is-active" class on "nav-menu" -->
	  	<span class="nav-toggle">
	    	<span></span>
	    	<span></span>
	    	<span></span>
	  	</span>

  		<!-- This "nav-menu" is hidden on mobile -->
  		<!-- Add the modifier "is-active" to display it on mobile -->
  		<div class="nav-right nav-menu">
    		<a class="nav-item" href="#">
    			<b>${sessionScope.user.username}(<i>${sessionScope.user.role}</i>)</b>
    		</a>
    		<div class="nav-item" >
    			<a href="<%=request.getContextPath()%>/admin?action=logout" class="button is-danger is-outlined">
      				Logout
      			</a>
    		</div>
  		</div>
		</div>
	</nav>
	
	<div id="app" class="container">
		<div class="columns">
			<div class="column is-2 is-fullheight">	
				<aside data-accordion-group class="menu">
					<div data-accordion>
						<p data-control class="menu-label">General</p>
						<ul data-content class="menu-list">
							<li>
								<a href="<%=request.getContextPath()%>/admin"><i class="fa fa-dashboard"></i> Dashboard</a>
							</li>
						</ul>					
					</div>
				</aside>
			</div>
			<div class="column is-10">
				<jsp:doBody/>
			</div>
		</div>
	</div>
</body>
</html>