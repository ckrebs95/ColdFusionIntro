<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
	<cfset session.validuser=false>
	<cfset session.badtries=0>
</cflock>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Log Out Page</title>
</head>

<body>
	<h2>Your session has been deleted</h2>
	<p><a href="demo-password-form.cfm">Login again</a></p>
</body>
</html>
