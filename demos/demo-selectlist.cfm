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

<form action="demo-drilldown.cfm">
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
