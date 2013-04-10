<html>
<head>
	<title>All Actors</title>
</head>

<body>
<cfquery name="getActors" datasource="movieList">
	SELECT actor_id, firstname, lastname
	FROM actors
	ORDER BY lastname
</cfquery>

<h2>List of All Actors (<cfoutput>#getActors.recordcount#</cfoutput> records)</h2>
<ul>

<table border="1">
	<tr>
		<td>Actor ID</td>
		<td>First Name</td>
		<td>Last Name</td>
	</tr>
	<cfoutput query="getActors">
		<tr>
			<td>#actor_id#</td>
			<td>#firstname#</td>
			<td>#lastname#</td>
		</tr>
	</cfoutput>
</table>

</body>
</html>
