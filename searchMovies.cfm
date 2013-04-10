<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<title>My Movie Reviews - Search Movies</title>
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
		<!---
			Add a <cfquery> tag which uses all three fields in the form.
			the tableName should be used in the FROM clause,
			and both fieldName and searchTerm should be used
			in the LIKE clause.
		--->
        <cfquery name="searchresults" datasource="movielist">
        	select *
            from #form.tablename#
            where #form.fieldname# like '%#form.searchterm#%'
        </cfquery>
        
        <cfdump var="#searchresults#">    
		
		<p>Your rsearch results appear below:</p>
		<!---
			Add a cfdump tag to display the results of the search
		--->
	<cfelse>	  
	<p>Please select which fields you would like to search on:</p>
	<form method="post">
		<input type="hidden" name="formSubmitted" value="true">
	  <table border="1">
		 <tr>
          <th>Table Name </th>
          <td>
          	<select name="tablename">
            	<option value="" selected>---Choose a Table---</option>
            	<option value="actors">Actors</option>
                <option value="movies">Movies</option>
            </select>
		  		<!---
				Add a <select> tag with options for both 
				the Movies and Actors tables.  The name
				of the field should be "tableName"
				--->
			</td>
        </tr>
       <cfoutput>
	   <tr>
          <th>Field Name</th>
          <td>
		 		<!---
				Name the <select> list below "fieldName"
				--->
				<select name="fieldname">
						<option value="name">Movie Name (movies table)</option>
						<option value="summary">Movie summary (movies table)</option>
						<option value="firstname">Actor's First Name (actors table)</option>
						<option value="lastname">Actor's Last Name (actors table)</option>
				</select>
		  </td>
        </tr>
		<tr>
          <th>Search Term</th>
		  		 <!---
					Name the text field below "searchTerm"
				  --->
          <td><input type="text" name="searchterm" ></td>
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
