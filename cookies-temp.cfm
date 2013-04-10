
<html>
<head>
	<title>Demo: Cookies</title>
</head>
<body>

<!--- 
test for the cookie named zip 
if it is defined, display this section
--->

	<h2>Welcome back to our site!</h2>
	<p>According to our records, your zip code is 
	<cfoutput>#cookie.zip#</cfoutput>.</p>
	<form action="cookies-set-delete-temp.cfm">
		<input type="submit" value="I do not live in <cfoutput>#cookie.zip#</cfoutput>">
	</form><br>
	Try the <a href="cookies-test-temp.cfm">other page!</a>

<!--- 
Otherwise, if the "zip" cookie is NOT defined,
display this section
--->

	<h2>Welcome to our site.  Please enter your zip code so that we can
	customize your experience</h2>
	<form action="cookies-set-delete-temp.cfm">
		Enter your zip code:<br>
		<input type="text" name="zip">
		<input type="submit" value="Remember my zip code">
	</form>
</cfif>	
</body>
</html>
