<!--- Add a <cfinclude> tag to password this page --->

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
          <td><a href="admin.cfm">Admin Section</a></td>
        </tr>
        <tr> 
          <td><a href="insertactor.cfm">Insert Actor</a></td>
        </tr>
        <tr>
          <td><a href="insertmovie.cfm">Insert Movie</a></td>
        </tr>
        <tr>
          <td><a href="editactor.cfm">Edit Actor</a></td>
        </tr>
        <tr>
          <td><a href="editmovie.cfm">Edit Movie</a></td>
        </tr>
      </table>
	 
</td>
    <td><h2>Admin section
      
      
    </h2>
    <p>Welcome Staff!</p>
    <p>Thanks for your hard work here for us. Use the links on the left to edit and insert ner actors and movies.</p></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"> 
	<cfinclude template="footer-date.cfm">
	</td>
  </tr>
</table>

</body>
</html>
