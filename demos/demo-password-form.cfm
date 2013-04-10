<cfif NOT isdefined('FORM.formSubmitted')>
<!--- If the form has not yet been submitted, display the form --->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Password Check Form</title>
	</head>
	
	<body>
		<h2>Please enter your username and password</h2>
        <!--- If a bad login attempt was made, display this error --->
		<cfif isdefined("URL.code") and URL.code IS 1>
            <p style="color:red">Incorrect User Name and Password combination.  Please try again.  Be aware that you will be blocked if you have three incorrect attempts.</p>
        </cfif>
        
		<form method="post" action="<cfoutput>#CGI.SCRIPT_NAME#</cfoutput>">
		User Name: <input type="text" name="username"><br>
		Password: <input type="password" name="pwd"><br>
		<input type="hidden" name="formSubmitted" value="true">
		<input type="submit">
		</form>
	</body>
	</html>
    
<cfelse> 
<!--- After the form is submitted, validate the username and password  --->

	<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
		<cfparam name="SESSION.pagename" default="demo-password-index.cfm">
		<cfset pagename="#SESSION.pagename#">
		<cfparam name="SESSION.badtries" default="0">
		<cfset badtries = "#SESSION.badtries#">
	</cflock>	

	<cfif VARIABLES.badtries GT 2>
		<h1>ERROR, YOU HAVE BEEN BLOCKED.  You have had three bad attempts</h1>
		<cfabort>
	</cfif>	
	<cfquery name="checknames" datasource="movieList">
		SELECT user_id
		FROM USERS
		WHERE username = '#username#' AND password = '#pwd#'
	</cfquery>
	<!--- If the username and password exist in the database... --->
	<cfif checknames.recordcount IS 1>
	<!--- ...set validuser to true and redirect the user to the intended page --->
		<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
			<cfset session.validuser=true>
		</cflock>	
		<cflocation url="#VARIABLES.pagename#" addtoken="no">
	<cfelse>
		<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">			
			<cfset session.badtries = session.badtries +1>
			<cflocation url="demo-password-form.cfm?code=1" addtoken="no">
		</cflock>
	</cfif>
</cfif>