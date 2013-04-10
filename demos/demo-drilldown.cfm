<cfquery name="getoneactor" datasource="movieList">
	SELECT *
	FROM actors
	WHERE actor_id = #actor_id#
</cfquery>
<html>
<head>
	<title>Demo:drilldown</title>
</head>
<body>
<h2>Detail for actor # <cfoutput>#actor_id#</cfoutput>
<ul>
<cfoutput query="getoneactor">	
	<li>First Name: #firstname#</li>
	<li>Last Name: #lastname#</li>
</cfoutput>
</ul>
</body>
</html>
