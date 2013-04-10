<html>
<head>
	<title>Demo: Cookies</title>
</head>
<body>
<cfif isdefined('cookie.zip')>
	<h2>Welcome back to our site!</h2>
	<p>According to our records, your zip code is 
	<cfoutput>#cookie.zip#</cfoutput>.</p>
	
	Back to the <a href="cookies-done.cfm">main page!</a>
<cfelse>
	<h2>Welcome to our site!</h2>
	<p>If you would like to log in, you may do so at the 
	<a href="cookies-done.cfm">log in</a> page.</p>
</cfif>	
</body>
</html>
