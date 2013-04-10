<cfcomponent>
	
	<!--- This function will return all actors --->
	<cffunction name="getAllRecords">
		<cfquery name="getTheRecords" datasource="movieList">
			SELECT * FROM actors
			ORDER BY lastname, firstname	
		</cfquery>
		<cfdump var="#getTheRecords#">
	</cffunction>
	
	
	<!--- This function will expect a parameter - 
		a value for lastname --->
	<cffunction name="searchRecords">
		<cfargument name="lastname" required="true">
		<cfquery name="getSomeRecords" datasource="movieList">
			SELECT * FROM actors
			WHERE lastname = '#arguments.lastname#'	
			ORDER BY lastname, firstname
		</cfquery>
		<cfoutput>Your search on the name #arguments.lastname# returned the following results.</cfoutput>
		<cfdump var="#getSomeRecords#">
	</cffunction>

</cfcomponent>