<cfquery name="updateMovie" datasource="movieList">
	UPDATE movies
	SET name = '#FORM.name#', summary = '#FORM.summary#', release_year = '#FORM.release_year#', runtime = #FORM.runtime# 
	WHERE movie_id = #FORM.movie_id#
</cfquery>

<cflocation  url="editMovie-ex12-done.cfm" addtoken="no"> 