<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Send Email</title>
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
    <td width="567">
	<cfif NOT isdefined('sendnow')>
	<cfquery name="getmovies" datasource="movieList">
		SELECT *
		FROM movies
	</cfquery>
	<h2>Please select a movie and you will receive an email when it is released on DVD</h2>
	<form method="post">
		Email address:  <input type="text" name="toemail"><br>
		<p>Please select a movie:</p>
		<select name="movie_id">
		  <cfoutput query="getmovies">	
			<option value="#movie_id#">#name#</option>
		  </cfoutput>
		</select><br>
		<input type="hidden" name="sendnow" value="true">
		<input type="submit">
	</form>

<cfelse>

	<!--- Get the detail on that movie --->	
	<cfquery name="getonemovie" datasource="movieList">
		SELECT movie_id, name, genre, summary
		FROM movies
		WHERE movie_id = #FORM.movie_id#
	</cfquery>
	
	<!---
	Build a cfmail tag that sends a message to the address entered 
	by the used (#FORM.toemail#).
	The actual email message is up to you.  But, it might look like this:
		This is the movie information about movie number 
			#movie_id# named #name#
			movie_id = #movie_id#
			name = #name#
			genre = #genre#
			summary = #summary#
	--->

	<h2>Thanks for registering!  Your email has been sent.</h2>
	<form>
	<input type="submit" value="Send Another">
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
