<html>
<head>
	<title>Demo-update-page1</title>
</head>

<cfquery name="getactors" datasource="movieList">
	SELECT *
	FROM actors
	ORDER BY lastname
</cfquery>

<body>
<h2>Select an actor</h2>

<form method="post" action="demo-update-page2.cfm">
<select name="actor_id">
	<option>Please select one</option>
  <cfoutput query="getactors">
	<option value="#actor_id#">#lastname#, #firstname#</option>
  </cfoutput>	
</select>
<input type="submit">
</form> 

</body>
</html>