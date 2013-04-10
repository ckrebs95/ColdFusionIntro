<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Home</title>
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
    <td width="167" valign="top">
	
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
    <td width="567"><p>Actor Details: </p>
      <cfquery name="getActors" datasource="movieList">
			SELECT *
			FROM actors
			WHERE actor_id = #URL.actor_id#
      </cfquery>
      <table border="1">
        <tr>
          <td>Actor Name</td>
          <td>Date of Birth</td>
          <td>Actor ID</td>
        </tr>
        <cfoutput query="getActors">
          <tr>
            <td>#getActors.lastname#, #getActors.firstname#</td>
            <td>#getActors.dob#</td>
            <td>#getActors.actor_id#</td>
          </tr>
        </cfoutput>
      </table></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"> 
	<cfinclude template="footer-date.cfm">
	</td>
  </tr>
</table>

</body>
</html>
