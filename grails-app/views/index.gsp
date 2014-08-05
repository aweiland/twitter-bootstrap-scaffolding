<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap" />
<title>Grails Twitter Bootstrap Scaffolding</title>
</head>

<body>
	<div class="row">
		<div class="col-md-8">

			<div class="jumbotron">
				<h1>Welcome to Grails</h1>

				<p>
					Grails scaffolding with a <a
						href="http://twitter.github.com/bootstrap" rel="external"><em>Twitter
							Bootstrap</em></a> look &amp; feel?
				</p>

				<p>
					This is a demo of how to reskin Grails dynamic scaffolding pages.
					I've used The <a href="http://freeside.co/grails-fields">Fields
						plugin</a> for customizing form rendering and the <a
						href="https://github.com/groovydev/twitter-bootstrap-grails-plugin">Twitter
						Bootstrap Resources plugin</a> to provide the CSS resources. Beyond
					that it&apos;s a bare Grails app using dynamically scaffolded
					controllers and views.
				</p>
			</div>


			<h2>Try It</h2>
			<p>This demo app includes a couple of controllers to show off its
				features.</p>
			<ul class="nav nav-list">
				<g:each var="c"
					in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<li><g:link controller="${c.logicalPropertyName}">
							${c.naturalName}
						</g:link></li>
				</g:each>
			</ul>

			<h2>Install It</h2>
			<p>To install this look &amp; feel into your Grails app you will
				need to:</p>
			<p>
				Add the following plugins to your <em>BuildConfig.groovy</em>:
			</p>
			<pre>runtime ':twitter-bootstrap:${applicationContext.getBean('pluginManager').getGrailsPlugin('twitter-bootstrap').version}'
runtime ':fields:${applicationContext.getBean('pluginManager').getGrailsPlugin('fields').version}'</pre>
			<p>Copy the following files to your project:</p>
			<pre>src/templates/scaffolding/*
web-app/css/scaffolding.css
grails-app/conf/ScaffoldingResources.groovy
grails-app/taglib/**/*
grails-app/views/index.gsp
grails-app/views/layouts/bootstrap.gsp
grails-app/views/_fields/default/_field.gsp</pre>

			<h2>Fork It</h2>
			<p>
				You can download, fork &amp; raise issues on this project on <a
					href="https://github.com/robfletcher/twitter-bootstrap-scaffolding">GitHub</a>.
			</p>

			<bootstrap:alert type="warning">This is an alert</bootstrap:alert>
			
			<bootstrap:datePicker name="something" />			

		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Application Status</h3>
				</div>
				<div class="panel-body">
					<ul>
						<li>App version: <g:meta name="app.version" /></li>
						<li>Grails version: <g:meta name="app.grails.version" /></li>
						<li>Groovy version: ${groovy.lang.GroovySystem.getVersion()}</li>
						<li>JVM version: ${System.getProperty('java.version')}</li>
						<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
						<li>Domains: ${grailsApplication.domainClasses.size()}</li>
						<li>Services: ${grailsApplication.serviceClasses.size()}</li>
						<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
					</ul>
				</div>
				<div class="panel-heading">
					<h3 class="panel-title">Installed Plugins</h3>
				</div>
				<div class="panel-body">
					<ul>
						<g:each var="plugin"
							in="${applicationContext.getBean('pluginManager').allPlugins}">
							<li>
								${plugin.name} - ${plugin.version}
							</li>
						</g:each>
					</ul>
				</div>
			</div>
		</div>
</body>
</html>
