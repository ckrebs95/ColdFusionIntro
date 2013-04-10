<cfif isdefined('FORM.submitted')>
  
	<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
		<cfparam name="SESSION.pagename" default="admin-ex15-done.cfm">
		<!--- Create a local variable named pagename to store the value of SESSION.pagename. --->
		<cfset pagename="#SESSION.pagename#">
	</cflock>	

<!--- Add a query to check whether the username and password combination exists once in the database.  --->
	<cfquery name="checknames" datasource="movieList">
		SELECT user_id
		FROM USERS
		WHERE username = '#FORM.username#' AND password = '#FORM.password#'
	</cfquery>
<!--- If the recordcount is exactly one, set validuser to true and redirect the user to the intended page.  Otherwise, redirect to the same login page (to display the form again). --->
	<cfif checknames.recordcount IS 1>
		<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
			<cfset session.validuser=true>
		</cflock>	
		<cfif isdefined('FORM.remember')>
	       <cfcookie name="remember" value="#checknames.user_id#" expires="7">
		</cfif>  
		<cflocation url="#VARIABLES.pagename#" addtoken="no">
	<cfelse>
		<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">			
			<cflocation url="#CGI.SCRIPT_NAME#" addtoken="no">
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
        <p>Remember me for one week: <input type="checkbox" name="remember" value="true"></p>
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
