<html>
<head>
	<title>Demo-Variables</title>
</head>

<body>
<cfset firstname="Henry">
<cfset lastname="Ford">
<h2>This page displays some variables</h2>

<p><cfoutput>Your name as stored in the variables is: #VARIABLES.firstname# #VARIABLES.lastname#</cfoutput></p>

<p><cfoutput>Your name in all upper case is: #UCase(VARIABLES.firstname)# #UCase(VARIABLES.lastname)#</cfoutput></p>

</body>
</html>
