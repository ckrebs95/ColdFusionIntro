<cflock scope="SESSION" type="Exclusive" timeout="30" throwontimeout="no">		
    <cfset StructDelete(SESSION, "pagename")>
    <cfset StructDelete(SESSION, "validuser")>
   <!---  Note to students:  You might find it helpful to uncomment out this next line when testing.  Otherwise, you will have to wait 20 minutes to attempt to login after three bad attempts  --->
    <cfset StructDelete(SESSION, "badtries")>
   
</cflock>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Log Out</title>
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
          <td><a href="admin.cfm">Admin Section</a></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
	 
	 </td>
    <td>
	  <p>Thanks, you have been logged out.</p>
      <p><a href="login.cfm">Log in again</a></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"> 
	<cfinclude template="footer-date.cfm">
	</td>
  </tr>
</table>

</body>
</html>
