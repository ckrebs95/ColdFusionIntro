<cfif NOT isdefined('URL.flavor')>
	<html>
	<head>
		<title>Page 2 of two page method</title>
	</head>
	<body>
	<h2>Error!  There is no Flavor</h2>
	<p>In order for this page to work, you must start at <a href="demo-conditional-page1.cfm">demo-conditional-page1.cfm</a></p>
	</body>
	</html>
<cfelseif #URL.flavor# IS "">
	<html>
	<head>
		<title>Page 2 of two page method</title>
	</head>
	<body>
	<h2>Error!  Looks like you left the field blank</h2>
	<p>Try again at <a href="demo-conditional-page1.cfm">demo-conditional-page1.cfm</a></p>
	</body>
	</html>
<cfelse>
	<html>
	<head>
		<title>Page 2 of two page method</title>
	</head>
	<body>
	<h2>That's amazing!</h2>
	<p>My favorite flavor is <cfoutput>#flavor#</cfoutput>, too!!</p>
	</body>
	</html>
</cfif>
