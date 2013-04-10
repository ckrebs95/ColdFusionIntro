<html>
<head>
	<title>Demo-mail</title>
</head>
<body>
<cfif NOT isdefined('beenhere')>
	<h2>Fill out this form and an email will be sent!</h2>
	<form>
		<input type="hidden" name="beenhere" value="true">
		Email address to send to:<br>
		<input type="text" name="email" size="20"><br>
		Message to include:<br>
		<textarea name="comments" cols="30" rows="5">
		</textarea><br>
		<input type="submit">
	</form>
	
<cfelse>
	
	<cfmail to="#email#" from="scott@scottantall.com" subject="Test Email From ColdFusion Class!">
I just wanted you to know what a good time I am having in learning ColdFusion!
#comments#
	</cfmail>

	<h2>Your email has been sent!</h2>

</cfif>

</body>
</html>
