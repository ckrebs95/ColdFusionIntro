<html>
<head>
	<title>Insert New Actor Form</title>
</head>

<body>
<h2>Who would you like to insert?</h2>

<cfform action="demo-insert.cfm" method="post">
<p>Add the actor's information</p>

First Name: <cfinput type="text" name="firstname" message="First Name is a required field" validateat="onSubmit" required="yes" size="30"><br>
Last Name: <cfinput type="text" name="lastname" message="Last Name is a required field" validateat="onSubmit" required="yes" size="30"><br>

<input type="submit"><br>

</cfform>
</body>
</html>
