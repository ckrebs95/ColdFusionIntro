<cfquery name="updateMovie" datasource="movieList">
	UPDATE actors
	SET firstname = '#FORM.firstname#', lastname= '#FORM.lastname#' 
	WHERE actor_id= #FORM.actor_id#
</cfquery>

<cflocation  url="editActor-ex12-done.cfm" addtoken="no"> 