<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Demo: Building a Dynamic SQL Statement</title>
</head>

<body>
<cfif isdefined('FORM.searchTerm')>
	<cfquery name="searchResults" datasource="movieList">
		SELECT firstname, lastname, dob, actor_id
		FROM actors
		WHERE #FORM.fieldName# LIKE '#FORM.searchTerm#%'
	</cfquery>
	<cfdump var="#searchResults#">
<cfelse>
	<form method="post">
		<h2>Search Actors!</h2>
		<p>Enter an actor's firstname or lastname (partial entry is ok!)</p>
		<input type="text" name="searchTerm" /><br />
		<select name="fieldName">
			<option value="firstname">First Name</option>
			<option value="lastname">Last Name</option>
		</select>
		<input type="submit" />
	</form>
</cfif>		

</body>
</html>