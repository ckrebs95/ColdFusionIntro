<cfquery name="insertActor" datasource="movieList">
	INSERT INTO actors (firstname, lastname)
	VALUES('#FORM.firstname#', '#FORM.lastname#')
</cfquery>
<cflocation url="demo-output-table.cfm" addtoken="no">
