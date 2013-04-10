<cfcomponent>
<cffunction name="getTheDate" returntype="string">
	<cfset thedate="#DateFormat(now(), 'ddd mmm, dd yyyy')#">
	<cfreturn thedate>
</cffunction>
</cfcomponent> 