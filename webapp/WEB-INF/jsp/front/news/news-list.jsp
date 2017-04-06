<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/functions' prefix='fn'%>

<t:layout-front>
	<jsp:attribute name="title">
		Cras feugiat euismod sem accumsan ultrices.
	</jsp:attribute>
	
	<jsp:body>
		<div class="box">
			<h3 class="title is-4 has-text-centered">
				Cras feugiat euismod sem accumsan ultrices.
			</h3>
			<hr />
			<div>
				<c:forEach items="${requestScope.news}" var="post">
				<article class="media">
					<div class="media-left">
						<figure class="image is-64x64">
							<img src="http://placehold.it/64x64?text=no-image" alt="" />
						</figure>
					</div>
					<div class="media-content">
						<div class="content">
							<strong><a href="${pageContext.request.contextPath}/news/id=${post.id}">${post.title}</a></strong><br />
							<small>${post.registerDate}</small>
							<p>
								${post.content}
							</p>
							<nav class="level">
			                  <div class="level-left">
			                    <a class="level-item">
			                      <span class="icon is-small"><i class="fa fa-reply"></i></span>
			                    </a>
			                    <a class="level-item">
			                      <span class="icon is-small"><i class="fa fa-retweet"></i></span>
			                    </a>
			                    <a class="level-item">
			                      <span class="icon is-small"><i class="fa fa-heart"></i></span>
			                    </a>
			                  </div>
			                  <div class="level-right">
			                  	<div class="level-item">
			                  	</div>
			                  </div>
			                </nav>
						</div>
					</div>
				</article>
				</c:forEach>		
			</div>		
		</div>
	</jsp:body>
</t:layout-front>