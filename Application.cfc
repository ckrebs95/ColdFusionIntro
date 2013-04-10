<cfcomponent>
	<!---  
	The use of Application.cfc is covered completely in our Advanced ColdFusion course.  
	In this course it is used to enable Session Management for the Session Variable section.
	 --->
	<cfset this.name="ColdFusionIntro">
	<cfset this.sessionmanagement="true">
	<cfset this.sessionTimeout="#CreateTimeSpan(0,0,20,0)#">
	<!---
	<cfset this.datasource="movieList">
    --->
    <cffunction name="onApplicationStart" access="public" returntype="string">
		<cfset APPLICATION.dsn="movieList">
		<cfreturn true>
	</cffunction>
</cfcomponent>