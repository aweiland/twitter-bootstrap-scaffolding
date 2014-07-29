<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<span class="navbar-brand">\${entityName}</span>
		</div>
		<div class="collapse navbar-collapse" id="bs-model-navbar-actions">
			<ul class="nav navbar-nav">
				<li class="\${actionName == 'list' ? 'active' : ''  }"><g:link class="list" action="list">
						<span class="glyphicon glyphicon-list-alt"></span>
						<g:message code="default.list.label" args="[entityName]" />
					</g:link></li>
				<li class="\${params.action == 'create' ? 'active' : ''  }"><g:link class="create" action="create">
						<span class="glyphicon glyphicon-plus"></span>
						<g:message code="default.create.label" args="[entityName]" />
					</g:link></li>
			</ul>
		</div>
	</div>
</nav>