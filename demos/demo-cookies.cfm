<html>
<head>
	<title>Demo: Cookies</title>
</head>
<body>
<cfif isdefined('cookie.name')>
	<h2>Welcome back to our site, <cfoutput>#cookie.name#</cfoutput>!</h2>
	<form action="demo-cookies-set-delete.cfm">
		<input type="submit" value="Clear the Cookie">
	</form>
<cfelse>
	<form action="demo-cookies-set-delete.cfm">
		Enter your name:<br>
		<input type="text" name="fullname">
		<input type="submit" value="Set the Cookie">
	</form>
</cfif>	
</body>
</html>
