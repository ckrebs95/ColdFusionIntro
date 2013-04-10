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
    <td><p>Movie Details:</p>
    <cfif isDefined('URL.movie_id') AND isNumeric(URL.movie_id)>
	
	  <cfquery name="getMovies" datasource="movieList">
			SELECT name, movie_id, genre, summary, release_year
			FROM movies
			WHERE movie_id = #URL.movie_id#
      </cfquery>
	  
	  <table width="100%" border="1">
         <cfoutput query="getMovies">
		 <tr>
          <th>Movie Name </th>
          <td>#name#</td>
        </tr>
       <tr>
          <th>Genre</th>
          <td>#genre#</td>
        </tr>
		<tr>
          <th>Summary</th>
          <td>#summary#</td>
        </tr>
		<tr>
          <th>Release Year</th>
          <td>#release_year#</td>
        </tr>
		</cfoutput>
      </table>
	  <cfelse>
	  	<p>ERROR - Please choose a movie at the <a href="allmovies.cfm">all movies page</a>.</p>
	  </cfif>
	  
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
