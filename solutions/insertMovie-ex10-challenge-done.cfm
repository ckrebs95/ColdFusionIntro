<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Insert Movie</title>
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
	<cfif isDefined('FORM.formSubmitted')>
		<!--- Phase 2 - Insert movie--->
        <cfquery name="insertMovie" datasource="movieList">
			INSERT INTO movies (name, summary, release_year, runtime, actor_id, genre)
			VALUES('#FORM.name#', '#FORM.summary#', #FORM.release_year#, #FORM.runtime#, #FORM.actor_id#, '#FORM.genre#')
		</cfquery>
		<p>The new movie has been inserted.  Please visit the <a href="allmovies.cfm">all movies</a> page to confirm.</p>
      
     <cfelse>  
	<!--- Phase 1 - Display form --->
	<p>Please enter a new movie:</p>
		
	<form method="post" action="<cfoutput>#CGI.SCRIPT_NAME#</cfoutput>">
		<input name="formSubmitted" type="hidden" value="true">
	  <table border="1">
		 <tr>
          <th>Movie Name</th>
          <td><input name="name" type="text" ></td>
        </tr>
       
	   <tr>
          <th>Movie Summary</th>
          <td><textarea name="summary" cols="40" rows="5" ></textarea></td>
        </tr>

	   <tr>
          <th>Release Year</th>
          <td><input name="release_year" type="text" size="4"></td>
        </tr>

	   <tr>
          <th>Run Time</th>
          <td><input name="runtime" type="text" size="4"> minutes</td>
        </tr>
	
	<cfquery name="getactors" datasource="movieList">
		SELECT * FROM actors
		ORDER BY lastname
	</cfquery>
		<tr>
          <th>Actor Name</th>
          <td>
		  <select name="actor_id">
		  	<cfoutput query="getactors">
			<option value="#actor_id#" >#lastname#, #firstname#</option>
			</cfoutput>
		  </select>
		  
		  </td>
        </tr>

	<cfquery name="getgenres" datasource="movieList">
		SELECT DISTINCT genre
		FROM movies
		ORDER BY genre
	</cfquery>

		<tr>
          <th>Genre</th>
          <td>
		  <select name="genre">
		  	<cfoutput query="getgenres">
			<option value="#genre#">#genre#</option>
			</cfoutput>
		  </select>
		  
		  </td>
        </tr>						
		<tr>
          <td colspan="2"><input type="submit"></td>
        </tr>
      </table>
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
