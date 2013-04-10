<cfquery datasource="movieList">
	UPDATE actors
	SET firstname = '#firstname#', lastname = '#lastname#'
	WHERE actor_id = #actor_id#
</cfquery>

<cfquery name="verify" datasource="movieList">
	SELECT * 
	FROM actors
	WHERE actor_id = #actor_id#
</cfquery>

<cflocation url="demo-update-page1-location.cfm">
<!---
The rest of this content may be deleted!  

<html>
<head>
	<title>Demo-update-page3</title>
</head>

<body>
<h2>Congratulations! Your update seems to have worked.  
Please verify the results below</h2>

<cfdump var="#verify#">

</body>
</html>

--->