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
    <td><p>Enter Details about an Upcoming Movie:</p>
  	<form method="post" action="upcomingMovie.cfm">
	  <table width="100%" border="1">
         
	    <tr>
          <th>Movie Name </th>
          <td><input type="text" name="name"></td>
         </tr>
        <tr>
          <th>Genre</th>
          <td><input type="text" name="genre"></td>
         </tr>
	    <tr>
          <th>Summary</th>
          <td><textarea name="summary"></textarea></td>
         </tr>
	    <tr>
          <th>Release Year</th>
          <td><cf_DisplayYear fieldName="theyear"></td>
         </tr>
  	  </table>
	</form>
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
