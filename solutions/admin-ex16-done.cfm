<cfinclude template="password-protect-ex16-done.cfm">
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
		  <td><a href="logout-done.cfm">Logout</a></td>
        </tr>
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
          <td><a href="insertActor-ex11-done.cfm">Insert Actor</a></td>
        </tr>
        <tr>
          <td background="insertMovie-ex10-challenge-done.cfm"><a href="insertMovie-ex10-challenge-done.cfm">Insert Movie</a></td>
        </tr>
        <tr>
          <td><a href="editactor.cfm">Edit Actor</a></td>
        </tr>
        <tr>
          <td><a href="editMovie-ex15-done.cfm">Edit Movie</a></td>
        </tr>
      </table>
	 
</td>
    <td>
    <h2>My Movie Reviews - Admin section</h2>
    <p>Use the navigation links on the left to add or edit  movies and actors.</p>
    <p>You should only be at this page is you have already logged in!</p>  
	
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
