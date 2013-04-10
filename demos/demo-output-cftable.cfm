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

<h2>List of All Actors (<cfoutput>#getActors.recordcount#</cfoutput> records) 
created with CFTABLE</h2>

<cftable query="getActors" colheaders htmltable border>
	<cfcol text="#actor_id#" header="Actor ID">
	<cfcol text="#firstname#" header="First Name">
	<cfcol text="#lastname#" header="Last Name">
</cftable> 

</body>
</html>
