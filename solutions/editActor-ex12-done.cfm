<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Edit Actor</title>
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
	<p>Please select an actor to edit:</p>
		<!--- Phase 1 - Select an actor to edit --->
		<cfquery name="getActors" datasource="movieList">
			SELECT actor_id, firstname, lastname
			FROM actors
			ORDER BY lastname
		</cfquery>
		<form method="post" >
			<input type="hidden" name="formSubmitted" value="true">
			<select name="actor_id">
				<cfoutput query="getActors">
					<option value="#actor_id#">#lastname#, #firstname#</option>
				</cfoutput>	
			</select>
			<input type="submit">
		</form>
	
	<cfelse>
	<!--- Phase 2 - Display the current values --->
	<p>Please edit the values below:</p>
		<cfquery name="getONEactor" datasource="movieList">
			SELECT actor_id, firstname, lastname
			FROM actors
			WHERE actor_id = #FORM.actor_id#
		</cfquery>
	<form method="post" action="editactor-UPDATE.cfm">
	<cfoutput query="getONEactor">
	<input name="actor_id" type="hidden" value="#actor_id#">
	  <table border="1">
		 <tr>
          <th>First Name</th>
          <td><input name="firstname" type="text" value="#firstname#"></td>
        </tr>
    
	   <tr>
          <th>Last Name</th>
          <td><input name="lastname" type="text" value="#lastname#" ></td>
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
