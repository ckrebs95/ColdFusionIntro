<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Insert Actor</title>
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
	
		<!--- Perform insert --->
		<cfquery name="insertActor" datasource="movieList">
			INSERT INTO actors (firstname, lastname, status)
			VALUES('#FORM.firstname#', '#FORM.lastname#', 'pending')
		</cfquery>
		<p>The new actor has been inserted.  Please visit the <a href="allactors.cfm">all actors</a> page to confirm.</p>
	
	<cfelse>
	<!--- Display Form --->
	<p>To insert an actor, please enter the firstname and lastname below.</p>

	<cfform method="post">
		<input type="hidden" name="formSubmitted" value="true">
	  <table border="1">
		 <tr>
          <th>Actor First Name</th>
          <td><cfinput type="text" name="firstname" message="First Name is a required field" validateat="onSubmit" required="yes"></td>
        </tr>
       
	   <tr>
          <th>Actor Last Name</th>
          <td><cfinput type="text" name="lastname" message="Last Name is a required field" validateat="onSubmit" required="yes"></td>
        </tr>
		<tr>
          <td colspan="2"><input type="submit"></td>
        </tr>
      </table>
	</cfform>
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
