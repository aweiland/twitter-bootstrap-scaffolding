<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
		<meta name="description" content="">
		<meta name="author" content="">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<asset:stylesheet src="application.css"/>

		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

		<g:layoutHead/>
	</head>

	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      		<div class="container">
					<div class="navbar-header">
      					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        					<span class="sr-only">Toggle navigation</span>
        					<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
      					</button>
      					<a class="navbar-brand" href="${createLink(uri: '/')}">Grails</a>
    				</div>
					

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">							
							<li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><a href="${createLink(uri: '/')}">Home</a></li>
							
							<li class="dropdown">
          						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Controllers <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
										<li<%= c.logicalPropertyName == controllerName ? ' class="active"' : '' %>><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
									</g:each>
								</ul>
							</li>
						</ul>
					</div>
				</div>
		</div>

		<div class="container">
			<div class="starter-template">
				<g:layoutBody/>
			</div>
		</div>

		<asset:javascript src="application.js"/>
	</body>
</html>