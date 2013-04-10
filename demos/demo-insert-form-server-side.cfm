<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Insert New Actor Form</title>
</head>

<body>
<h2>Who would you like to insert?</h2>

<form action="demo-insert.cfm" method="post">
<p>Add the actor's information</p>

First Name: <input type="text" name="firstname" size="30"><br>
Last Name: <input type="text" name="lastname" size="30"><br>

<input type="hidden" name="firstname_required" value="First Name is required">
<input type="hidden" name="lastname_required" value="Last Name is required">


<input type="submit"><br>

</form>
</body>
</html>
