
<html>
<head>
	<title>Demo: Functions with cffunction</title>
</head>

<body>
<cffunction name="HelloWorld">
	<cfset hello = "Hello World!">
	<cfreturn hello>
</cffunction>

<cfoutput>#HelloWorld()#</cfoutput>

<br><br><br>

<cffunction name= "SumofXandY" returnType="Numeric" >
	<cfargument name="x" required="true">
	<cfargument name="y" required="true">

	<cfset sum = x + y>
	<cfreturn sum>
</cffunction>

<cfset x = "1">
<cfset y = "2">

<cfoutput>The sum of x and y is #SumofXandY(x,y)#</cfoutput>

</body>
</html>
