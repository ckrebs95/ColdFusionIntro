<html>
<head>
	<title>Demo: List Actors</title>
</head>

<body>
<cfquery name="getActors" datasource="movieList">
	SELECT actor_id, firstname, lastname
	FROM actors
	ORDER BY lastname
</cfquery>

<h2>List of All Actors (<cfoutput>#getActors.recordcount#</cfoutput> records)</h2>
<ul>
	<cfoutput query="getactors">
		<li>#firstname# #lastname#</li>
	</cfoutput>
</ul>

</body>
</html>
