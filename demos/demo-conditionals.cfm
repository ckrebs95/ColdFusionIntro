<html>
<head>
	<title>Conditional Demo</title>
</head>

<body>
<cfset firstname = "Scott">

<cfif VARIABLES.firstname IS "Scott">
	<p>Cool Name!  My name is Scott too!</p>
<cfelseif VARIABLES.firstname IS "Tim">
	<p>Cool Name!  I have a friend named Tim.</p>
<cfelseif VARIABLES.firstname IS "Cheryl">
	<p>Cool Name!  I have a friend named Cheryl.</p>
<cfelse>
	<p>VARIABLES.firstname is a Cool Name!  </p>
</cfif>

</body>
</html>
