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
		<cfquery name="searchResults" datasource="movieList">
			SELECT * 
			FROM #FORM.tableName#
			WHERE #FORM.fieldName# LIKE '%#FORM.searchTerm#%'
		</cfquery>
		<p>Your search results appear below:</p>
		<cfinvoke component="dataDisplay" method="buildTable" returnvariable="tableText" getdata="#searchResults#">
		<cfoutput>#tableText#</cfoutput>
	<cfelse>	  
	<p>Please select which fields you would like to search on:</p>
	<form method="post">
		<input type="hidden" name="formSubmitted" value="true">
	  <table border="1">
		 <tr>
          <th>Table Name </th>
          <td>
		  		<select name="tableName">
						<option value="movies">Movies</option>
						<option value="actors">Actors</option>
				</select>
			</td>
        </tr>
       <cfoutput>
	   <tr>
          <th>Field Name</th>
          <td>
		 		<select name="fieldName">
						<option value="name">Movie Name (movies table)</option>
						<option value="summary">Movie summary (movies table)</option>
						<option value="firstname">Actor's First Name (actors table)</option>
						<option value="lastname">Actor's Last Name (actors table)</option>
				</select>
		  </td>
        </tr>
		<tr>
          <th>Search Term</th>
          <td><input type="text" name="searchTerm" ></td>
        </tr>
		<tr>
          <td colspan="2"><input type="submit"></td>
        </tr>
      </table>
	  </form>
	</cfoutput>
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
