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
    <td>
	<cfif isDefined('FORM.formSubmitted')>
	<p>Your review appears below:</p>
		<!--- Using conditional statements for form validation
		(from Exercise 6 Challenge)
		--->
		<cfset errors="">
		<cfif NOT isNumeric(FORM.movie_id)>
			<cfset errors = #errors#&"<li>Movie ID must be numeric</li>">
		</cfif>
		<cfif errors NEQ "">
			<cfoutput><ul>#errors#</ul></cfoutput>
		<cfelse>	
		 <cfoutput>
		  <table border="1">
			 <tr>
			  <th>Movie ID</th>
			  <td>#movie_id#</td>
			</tr>
		   <tr>
			  <th>Your Name</th>
			  <td>#FORM.reviewer_name#</td>
			</tr>
			<tr>
			  <th>Review</th>
			  <td>#FORM.review#</td>
			</tr>
		  </table>
		  </cfoutput>
		  </cfif>
		
		</cfif>	  
	
	
	<p>Please post your review:</p>
	<cfparam name="FORM.reviewer_name" default="">
	
	<cfquery name="getMovies" datasource="movieList">
		SELECT name, movie_id 
		FROM movies
		ORDER BY name
	</cfquery>
	<form method="post">
		<input type="hidden" name="formSubmitted" value="true">
	  <table border="1">
		 <tr>
          <th>Movie ID </th>
          <td><select name="movie_id">
					<cfoutput query="getMovies">
						<option value="#movie_id#">#name#</option>
					</cfoutput>
				</select></td>
        </tr>
	   <tr>
          <th>Your Name</th>
            <cfoutput><td><input name="reviewer_name" type="text" value="#FORM.reviewer_name#"></td></cfoutput>
        </tr>
		<tr>
          <th>Review</th>
          <td><textarea name="review" cols="40" rows="5" wrap="virtual"></textarea></td>
        </tr>
		<tr>
          <td colspan="2"><input type="submit"></td>
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
