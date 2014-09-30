<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap" />
<title>Grails Twitter Bootstrap Scaffolding</title>
</head>

<body>

<h1>Pagination</h1>

<g:paginate total="120" />

<h1>Date Picker</h1>

<bootstrap:datePicker name="testme"/>

<h1>Field</h1>
<g:textField name="test"/>

<h1>Glyphicons</h1>
Tag lib test here:
<p>
<bootstrap:glyphicon icon="plus"/>
<bootstrap:glyphicon icon="send"/>
</p>

<h1>Form Stuff</h1>
<form role="form">
<bf:text bean="${cmd }" label="Label" field="someText" />
<g:eachError></g:eachError>
</form>
</body>

</html>