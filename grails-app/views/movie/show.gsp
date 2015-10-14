
<%@ page import="ivvq.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.imdbID}">
				<li class="fieldcontain">
					<span id="imdbID-label" class="property-label"><g:message code="movie.imdbID.label" default="Imdb ID" /></span>
					
						<span class="property-value" aria-labelledby="imdbID-label"><g:fieldValue bean="${movieInstance}" field="imdbID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="movie.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${movieInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.director}">
				<li class="fieldcontain">
					<span id="director-label" class="property-label"><g:message code="movie.director.label" default="Director" /></span>
					
						<span class="property-value" aria-labelledby="director-label"><g:fieldValue bean="${movieInstance}" field="director"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.runtime}">
				<li class="fieldcontain">
					<span id="runtime-label" class="property-label"><g:message code="movie.runtime.label" default="Runtime" /></span>
					
						<span class="property-value" aria-labelledby="runtime-label"><g:fieldValue bean="${movieInstance}" field="runtime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="movie.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:fieldValue bean="${movieInstance}" field="releaseDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.writers}">
				<li class="fieldcontain">
					<span id="writers-label" class="property-label"><g:message code="movie.writers.label" default="Writers" /></span>
					
						<span class="property-value" aria-labelledby="writers-label"><g:fieldValue bean="${movieInstance}" field="writers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.actors}">
				<li class="fieldcontain">
					<span id="actors-label" class="property-label"><g:message code="movie.actors.label" default="Actors" /></span>
					
						<span class="property-value" aria-labelledby="actors-label"><g:fieldValue bean="${movieInstance}" field="actors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.plot}">
				<li class="fieldcontain">
					<span id="plot-label" class="property-label"><g:message code="movie.plot.label" default="Plot" /></span>
					
						<span class="property-value" aria-labelledby="plot-label"><g:fieldValue bean="${movieInstance}" field="plot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="movie.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label"><g:fieldValue bean="${movieInstance}" field="genre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="movie.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${movieInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.poster}">
				<li class="fieldcontain">
					<span id="poster-label" class="property-label"><g:message code="movie.poster.label" default="Poster" /></span>
					
						<span class="property-value" aria-labelledby="poster-label"><g:fieldValue bean="${movieInstance}" field="poster"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:movieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${movieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
