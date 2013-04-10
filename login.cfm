<cfif isdefined('FORM.submitted')>
  
	<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">	
    		
		<cfparam name="SESSION.pagename" default="admin.cfm">
		<!--- Create a local variable named pagename to store the value of SESSION.pagename. --->
		<cfset pagename = #session.pagename#>
	</cflock>	

<!--- Add a query to check whether the username and password combination exists once in the database.  --->
	<cfquery name="credex" datasource="movielist">
    	select user_id
        from users
        where username = '#form.username#' and password = '#form.password#'
	</cfquery>
<!--- If the recordcount is exactly one, set validuser to true and redirect the user to the intended page.  Otherwise, redirect to the same login page (to display the form again). --->
	<cfif #credex.recordcount# eq 1>
    	<cflock scope="session" type="exclusive" timeout="30" throwontimeout="no">
        	<cfset session.validuser = true>
            <cfset session.lockout = 0>
        </cflock>
    	<cflocation url="#pagename#">
	<cfelse>
    	<cflock scope="session" type="exclusive" timeout="30" throwontimeout="no">
        	<cfset session.lockout = "#session.lockout+1#">
    		<cflocation url="./login.cfm?msg=Invalid+Username+or+Password.">
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
<cfquery name="d" datasource="movielist">
	select *
    from users
</cfquery>
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
          <td><a href="admin.cfm">Admin Section</a></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
	 
</td>
    <td>
    <cfparam name="session.lockout" default = "0">
	<cfparam name="url.msg" default="">
	<!---  Display the form --->   
    <cflock scope="server" type="exclusive" timeout="30" throwontimeout="no">
      <cfif #session.lockout# gte 3>
      	<div style="font-size:large; font-weight:bolder; color:bright red; background-color:black;">
        	YOU HAVE BEEN BLOCKED FROM ACCESSING THIS SITE SORRY
        </div>
        <cfabort>
      <cfelse>
    	<div style="font-weight:bold; color:red;"><cfoutput>#url.msg#</cfoutput><br/><cfdump var="#d#"><br/><cfdump var="#session.lockout#"></div>
        
    </cfif>
    </cflock> 
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