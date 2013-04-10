<html>
<head>
	<title>Demo: Self-validating form!</title>
</head>

<body>

<h3>This is a self-validating form!  Leave the fields blank, press submit and see what happens!</h3> 

<form action="demo-server-validation-result.cfm" method="post">

<input type="hidden" name="firstname_required" value="First Name is required">
<input type="hidden" name="lastname_required" value="Last Name is required">
<input type="hidden" name="zip_integer" value="Zip Code must be an integer">

	<table>
		<tr>
			<td>First Name</td>
			<td><input type="Text" name="firstname"></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input type="Text" name="lastname"></td>
		</tr>
		<tr>
			<td>Zip Code:</td>
			<td><input type="Text" name="zip"></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit">
			</td>
		</tr>
	</table>
</form>
		

</body>
</html>
