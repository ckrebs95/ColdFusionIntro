<cfquery name="insertActor" datasource="movieList">
	INSERT INTO actors (firstname, lastname)
	VALUES('#FORM.firstname#', '#FORM.lastname#')
</cfquery>

<html>
<head>
	<title>Insert New Actor</title>
</head>

<body>
<h2>Looks like it worked!</h2>

<p>Take a look at the <a href="demo-output-table.cfm">demo-output-table.cfm</a> page to be sure!</p>
</body>
</html>
