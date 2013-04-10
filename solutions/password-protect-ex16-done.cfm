<!--- Lock the session scope in order to check 
	value of SESSION.validuser --->
<cflock scope="SESSION" type="exclusive" timeout="30" throwontimeout="no">		
	<cfif isDefined("SESSION.validuser") AND SESSION.validuser IS NOT false>		
		<cfset validuser=SESSION.validuser>
	<cfelse>
		<cfif isdefined('COOKIE.remember')>
        	<cfset validuser=true>
            <cfset SESSION.user_id=COOKIE.remember>
		<cfelse>
			<cfset validuser=false>
		<!--- Store the name of the current page --->
        </cfif>
		<cfset session.pagename = #CGI.SCRIPT_NAME#>
	</cfif>	
</cflock>

<cfif VARIABLES.validuser IS false>
	<!--- Redirect the user to the login page --->
	<cflocation url="login-ex16-done.cfm" addtoken="no">
</cfif>