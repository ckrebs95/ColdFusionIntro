<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Demo: Using the LIKE clause</title>
</head>

<body>
<cfif isdefined('FORM.searchTerm')>
	<cfquery name="searchResults" datasource="movieList">
		SELECT name, movie_id
		FROM movies
		WHERE name LIKE '#FORM.searchTerm#%'
	</cfquery>
	<cfdump var="#searchResults#">
<cfelse>
	<form method="post">
		<h2>Search Movies!</h2>
		<p>Enter a partial movie name</p>
		<input type="text" name="searchTerm" /><br />
		<input type="submit" />
	</form>
</cfif>		

</body>
</html>
