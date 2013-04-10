<cfif isdefined('FORM.submitted')>
  
	<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
		<cfparam name="SESSION.pagename" default="admin-ex15-done.cfm">
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
		WHERE username = '#FORM.username#' AND password = '#FORM.password#'
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
			<cflocation url="#CGI.SCRIPT_NAME#?code=1" addtoken="no">
		</cflock>
	</cfif>
</cfif>       
   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="mymovies.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="750" border="1">
  <tr> 
    <td colspan="2" valign="top"> <h2 align="center">My Movie Reviews</h2>
    </td>
  </tr>
  <tr valign="top"> 
    <td width="175" valign="top">
	
	<!--- Navigation Table --->
	<table width="100%" border="0">
        <tr> 
		  <td><a href="allmovies.cfm">View Movies</a></td>
        </tr>
        <tr> 
          <td><a href="allactors.cfm">View Actors</a></td>
        </tr>
        <tr> 
          <td><a href="admin-ex15-done.cfm">Admin Section</a></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
	 
</td>
    <td>

  		<!--- If a bad login attempt was made, display this error --->
		<cfif isdefined("URL.code") and URL.code IS 1>
            <p style="color:red">Incorrect User Name and Password combination.  Please try again.  Be aware that you will be blocked if you have three incorrect attempts.</p>
        </cfif>
	<!---  Display the form --->    
    <p>Please enter your username and password:</p>
      <form name="form1" method="post" action="<cfoutput>#CGI.SCRIPT_NAME#</cfoutput>">
      <input type="hidden" name="submitted" value="true">
        <p>User name: 
          <input type="text" name="username" id="username">
          <br>
        Password: 
        <input type="password" name="password" id="password">
        </p>
        <p>
          <input type="submit" name="button" id="button" value="Submit">
        </p>
    </form>      <p>&nbsp;</p>
    
    </td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"> 
	<cfinclude template="footer-date.cfm">
	</td>
  </tr>
</table>

</body>
</html>
