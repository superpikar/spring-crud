<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:layout-admin>
	<jsp:attribute name="title">
		<c:choose>
			<c:when test="${model.action == 'new'}">
				<c:set var="title" value="New Post"/>
				<c:set var="buttonTitle" value="Save Post"/>
				<c:set var="action" value="add"/>
			</c:when>
			<c:otherwise>
				<c:set var="title" value="Edit Post"/>
				<c:set var="buttonTitle" value="Update Post"/>
				<c:set var="action" value="edit"/>
			</c:otherwise>
		</c:choose>
		<c:out value="${title}" />
	</jsp:attribute>
		<jsp:attribute name="footer">
		<script type="text/javascript" src="${pageContext.request.contextPath}/libs/naversmarteditor/js/service/HuskyEZCreator.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/NaverSmartEditor.js"></script>
		<script>
		
			function clickModel(){
				console.log('click model');
				$('.modal iframe').contents().find('.card').click(function(){
					alert('hello from iframe');
				});
			}
			
			var app = new Vue({
			  	el: '#app',
			  	data: {
					title: "${requestScope.post.title}",
			    	slug: "${requestScope.post.slug}",
			    	showModal: false
			  	},
			  	mounted: function() {
			 	  	this.contentEditor = new NaverSmartEditor("content", "${pageContext.request.contextPath}/libs/naversmarteditor/SmartEditor2Skin.html");
			 	  	this.summaryEditor = new NaverSmartEditor("summary", "${pageContext.request.contextPath}/libs/naversmarteditor/SmartEditor2Skin.html");
			 	  	
			 	  	window.setTimeout(function(){
			 	  		clickModel();
			 	  	}, 1000);
			  	},
			  	methods: {
				  	updateSlug: function() {
					  	this.slug = _.kebabCase(this.title)
				  	},
				  	submitForm: function(e) {
					  	//e.preventDefault();
					 	this.contentEditor.setEditorValue();
					 	this.summaryEditor.setEditorValue();
					  	//console.log(content);
				  	},
				  	showFileExplorer: function(isShow){
				  		this.showModal = isShow;
				  	}
			  	}
			});
		</script>
	</jsp:attribute>
	
	<jsp:body>
		<h1 class="title">
			<c:out value="${title}" />
		</h1>
		
		<c:if test="${not empty sessionScope.message}">
		<article class="message is-success">
  			<div class="message-body">
				${sessionScope.message}
			</div>
		</article>
		</c:if>
		<div class="columns">
			<div class="column is-10">
				<form action="${pageContext.request.contextPath}/admin/news" method="post" enctype="multipart/form-data">
					<div class="control is-horizontal">
						<div class="control-label">
							<label class="label">Title</label>
						</div>
						<p class="control">
						  	<input class="input" name="title" type="text" placeholder="Title" v-model="title" v-on:keyup="updateSlug"/>
						</p>
					</div>
					<div class="control is-horizontal">
						<div class="control-label">
							<label class="label">Slug</label>
						</div>
						<p class="control">
							<input class="input" type="text" disabled v-model="slug"/>
						</p>
					</div>
					<div class="control is-horizontal">
						<div class="control-label">
							<label class="label">Content</label>
						</div>
						<p class="control">
							<textarea name="content" id="content" class="textarea" placeholder="write down your content here">
								 
							</textarea>						
						</p>
					</div>
					<input type="hidden" name="id" value="${requestScope.post.id}" />
					<input type="hidden" name="slug" v-bind:value="slug"/>
					<input type="hidden" name="action" value="${action}"/>
					<div class="control is-horizontal">
						<div class="control-label"></div>
						<div class="control is-grouped">
							<div class="control">
								<button class="button is-primary" v-on:click="submitForm">${buttonTitle}</button>
							</div>
							<div class="control">
								<a class="button" href="${pageContext.request.contextPath}/admin/news">Cancel</a>
							</div>
				    		<c:if test="${action == 'edit'}">
				    		<hr />
				    		<span class="tag">Created : ${requestScope.post.registerDate}</span><br/>
				    		<span class="tag">Updated : ${requestScope.post.modificationDate}</span>
				    		</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</jsp:body>
</t:layout-admin>