<html>
<head>
	<title>Demo: Get the date from a ColdFusion component</title>
</head>

<body>

<h1 align="center">Invoking a CFC with the cfinvoke tag</h1>

<h2>Using the cfinvoke tag</h2>
	<cfinvoke component="component-date" method="getTheDate" returnvariable="datereceived">
	<p>The date is <cfoutput>#datereceived#</cfoutput></p>

</body>
</html>
