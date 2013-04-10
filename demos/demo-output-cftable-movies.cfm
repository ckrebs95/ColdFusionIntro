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

<h2>List of All Movies (<cfoutput>#getMovies.recordcount#</cfoutput> records) 
created with CFTABLE</h2>

<cftable query="getMovies" colheaders htmltable border>
	<cfcol text="#name#" header="Movie Name">
	<cfcol text="#genre#" header="Genre">
	<cfcol text="#movie_id#" header="Movie ID">
</cftable> 

</body>
</html>
