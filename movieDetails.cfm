<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Movie Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="mymovies.css" rel="stylesheet" type="text/css">
</head>

<body>
<cfif not isdefined('url.movie_id')>
	<cflocation url="./allmovies.cfm?msg=You%20must%20select%20a%20movie%20first.">
<cfelse>
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
	  <!---
		  1 - Add a query that uses a WHERE clause which will
		  pull the movie_id from the URL
		  2 - Add a table to display the movie data including:
		  name, genre, summary, release_year
	  --->
	  
	  <cfquery name="movieDetails" datasource="movieList">
		  select *
		  from movies
		  where movie_id=#url.movie_id#
	  </cfquery>
	  <!---<cfdump var="#moviedetails#">--->
	  <table border="1">
		  <tr>
			  <th>
				  Name
			  </th>
			  <th>
				  Genre
			  </th>
			  <th>
				  Summary
			  </th>
			  <th>
				  Release Year
			  </th>
		  </tr>
		  <cfoutput query="moviedetails">
			  <tr>
				  <td>
					  #name#
				  </td>
				  <td>
					  #genre#
				  </td>
				  <td>
					  #summary#
				  </td>
				  <td>
					  #release_year#
				  </td>
			  </tr>
		  </cfoutput>
	  </table>
	 </td>
	</tr>
	<tr> 
	  <td colspan="2" valign="top"> 
	  <cfinclude template="footer-date.cfm">
	  </td>
	</tr>
  </table>
</cfif>
</body>
</html>
