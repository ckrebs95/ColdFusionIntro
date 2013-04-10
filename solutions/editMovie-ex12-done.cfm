<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Edit Movie</title>
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
	<cfif NOT isDefined('FORM.formSubmitted')>
	<p>Please select a movie to edit:</p>
		<!--- Phase 1 - Select a movie to edit --->
		<cfquery name="getMovies" datasource="movieList">
			SELECT name, movie_id
			FROM movies
			ORDER BY name
		</cfquery>
		<form method="post" >
			<input type="hidden" name="formSubmitted" value="true">
			<select name="movie_id">
				<cfoutput query="getMovies">
					<option value="#movie_id#">#name#</option>
				</cfoutput>	
			</select>
			<input type="submit">
		</form>
	
	<cfelse>
	<!--- Phase 2 - Display the current values --->
	<p>Please edit the values below:</p>
		<cfquery name="getONEMovie" datasource="movieList">
			SELECT movie_id, name, summary, release_year, runtime
			FROM movies
			WHERE movie_id = #FORM.movie_id#
		</cfquery>
	<form method="post" action="editMovie-UPDATE.cfm">
	<cfoutput query="getONEMovie">
	<input name="movie_id" type="hidden" value="#movie_id#">
	  <table border="1">
		 <tr>
          <th>Movie Name</th>
          <td><input name="name" type="text" value="#name#"></td>
        </tr>
       
	   <tr>
          <th>Movie Summary</th>
          <td><textarea name="summary" cols="40" rows="5" >#summary#</textarea></td>
        </tr>

	   <tr>
          <th>Release Year</th>
          <td><input name="release_year" type="text" value="#release_year#" size="4"></td>
        </tr>

	   <tr>
          <th>Run Time</th>
          <td><input name="runtime" type="text" value="#runtime#" size="4"> minutes</td>
        </tr>
						
		<tr>
          <td colspan="2"><input type="submit"></td>
        </tr>
      </table>
	  </cfoutput>
	</form>
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
