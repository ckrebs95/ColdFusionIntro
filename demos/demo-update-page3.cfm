<cfquery name="updateActor" datasource="movieList">
	UPDATE actors
	SET firstname = '#FORM.firstname#', lastname = '#FORM.lastname#'
	WHERE actor_id = #FORM.actor_id#
</cfquery>

<cfquery name="verify" datasource="movieList">
	SELECT * 
	FROM actors
	WHERE actor_id = #FORM.actor_id#
</cfquery>

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