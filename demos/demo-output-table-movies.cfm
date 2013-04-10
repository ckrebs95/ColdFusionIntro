<html>
<head>
	<title>All Movies</title>
</head>

<body>
<cfquery name="getMovies" datasource="movieList">
	SELECT movie_id, name, genre, summary
	FROM movies
	ORDER BY name
</cfquery>

<h2>List of All Movies (<cfoutput>#get<ovies.recordcount#</cfoutput> records)</h2>
<ul>

<table border="1">
	<tr>
		<td>Movie ID</td>
		<td>Movie Name</td>
		<td>Genre</td>
		<td>Summary</td>
	</tr>
	<cfoutput query="getMovies">
		<tr>
			<td>#movie_id#</td>
			<td>#name#</td>
			<td>#genre#</td>
			<td>#summary#</td>
		</tr>
	</cfoutput>
</table>

</body>
</html>
