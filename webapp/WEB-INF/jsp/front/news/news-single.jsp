<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/functions' prefix='fn'%>

<t:layout-front>
	<jsp:attribute name="title">
		${requestScope.news.title}
	</jsp:attribute>
	
	<jsp:body>
		<h1 class="title has-text-centered">
			${requestScope.news.title}
		</h1>
		<div class="blog-posts">
			${requestScope.news}<br/>
			${requestScope.news.id}<br/>
			${requestScope.news.title}<br/>
			${requestScope.news.content}<br/>		
		</div>		
	</jsp:body>
</t:layout-front>