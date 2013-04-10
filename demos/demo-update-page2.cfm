<cfquery name="getoneactor" datasource="movieList">
	SELECT *
	FROM actors
	WHERE actor_id = #FORM.actor_id#
</cfquery>
<html>
<head>
	<title>Demo-update-page2</title>
</head>
<body>
<h2>Edit information for actor # <cfoutput>#actor_id#</cfoutput>

<cfoutput query="getoneactor">	
<form method="post" action="demo-update-page3.cfm"> 
	<input type="hidden" name="actor_id" value="#actor_id#">
	First Name: <input type="text" name="firstname" value="#firstname#"><br>
	Last Name: <input type="text" name="lastname" value="#lastname#"><br>
	<input type="submit">
</form>
</cfoutput>
</ul>
</body>
</html>
