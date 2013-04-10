<html>
<head>
	<title>Demo-query-dump</title>
</head>

<body>
<cfquery name="getactors" datasource="movieList">
	SELECT actor_id, firstname, lastname
	FROM actors
	ORDER BY lastname
</cfquery>

<cfdump var="#getactors#">

</body>
</html>
