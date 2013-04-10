<cfif isdefined('cookie.name')>
	<cfcookie name="name" value="" expires="NOW"> 
<cfelse>
	<cfcookie name="name" value="#URL.fullname#" expires="1"> 
</cfif>

<cflocation url="demo-cookies.cfm" addtoken="no">