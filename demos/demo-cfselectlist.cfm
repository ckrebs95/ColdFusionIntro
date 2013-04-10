<html>
<head>
	<title>Demo-selectlist</title>
</head>

<cfquery name="getactors" datasource="movieList">
SELECT *
FROM actors
</cfquery>

<body>
<h2>Select an actor</h2>

<cfform action="demo-drilldown.cfm">
<cfselect name="actor_id" query="getactors" value="actor_id" display="lastname">
</cfselect> 
<input type="submit">
</cfform> 

</body>
</html>
