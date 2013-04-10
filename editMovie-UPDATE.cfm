<cfdump var="#form.movie_id#">

<cfquery name="update" datasource="movielist">
	update movies
    set name = '#form.name#', summary = '#form.summary#', release_year = '#form.release_year#', runtime = '#form.runtime#'
    where movie_id = #form.movie_id#
</cfquery>

<cflocation url="./editmovie.cfm?msg=Update+Successful">