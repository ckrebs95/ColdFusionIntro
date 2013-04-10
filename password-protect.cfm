
<cflock scope="SESSION" type="ReadOnly" timeout="30" throwontimeout="no">		
	<!--- Inside this cflock tag, add a conditional statement below to test whether SESSION.validuser is defined: 
	
	if SESSION.validuser is defined
		create a local variable called validuser that stores the value of SESSION.validuser
	otherwise
		create a local variable called validuser with a value of false
		create a SESSION variable called pagename that stores the name of the current page (accessible using CGI.SCRIPT_NAME)
	--->
    <cfif isdefined("session.validuser") eq TRUE>
    	<cfset validuser = #session.validuser#>
    <cfelse>
    	<cfset validuser = false>
        <cfset session.pagename = #cgi.SCRIPT_NAME#>
    </cfif>
    
</cflock>

<cfif VARIABLES.validuser IS false>
	<!--- Redirect the user to the login page --->
	<cflocation url="login.cfm" addtoken="no">
</cfif>