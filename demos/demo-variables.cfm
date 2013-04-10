<html>
<head>
	<title>Demo-Variables</title>
</head>

<body>
<cfset firstname="Henry">
<cfset lastname="Ford">
<h2>This page displays some variables</h2>

<p><cfoutput>Using just the name of the variable: #firstname# #lastname#</cfoutput></p>

<p><cfoutput>Using the name of the variable WITH the prefix: #VARIABLES.firstname# #VARIABLES.lastname#</cfoutput></p>

</body>
</html>
