<!--- Add a <cfinclude> tag to password this page --->

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
		<cfquery name="dup" datasource="movielist">
        	select *
            from actors
            where firstname = '#firstname#' and lastname = '#lastname#'
         </cfquery>
         <cfif #dup.recordcount# gt 0>
         	Your record already exists please try again.<br/>
            <a href="./insertactor.cfm">retry</a>
         <cfelse>
		<!--- Perform insert --->
		
		<!--- 
			Add a cfquery tag that will insert three fields (firstname, 
			lastname and status) into the actors table.  The data will 
			be sent from the form below.  (Which you will complete next.)
		--->
        <cfquery name="insertactor" datasource="movielist">
        	insert into actors (firstname, lastname, status)
            values('#form.firstname#', '#form.lastname#', 'Pending')
        </cfquery>


		<p>The new actor has been inserted.  Please visit the <a href="allactors.cfm">all actors</a> page to confirm.</p>
        </cfif>
	<cfelse>
	
	<p>To insert an actor, please enter the firstname and lastname below.</p>

	<form method="post">
		<input type="hidden" name="formSubmitted" value="true">
	  <table border="1">
		 <tr>
          <th>Actor First Name</th>
          <td><input name="firstname" type="text"><!--- Add a text field with a name of "firstname" ---></td>
        </tr>
       
	   <tr>
          <th>Actor Last Name</th>
          <td><input name="lastname" type="text"><!--- Add a text field with a name of "lastname" ---></td>
        </tr>
		<tr>
          <td colspan="2"><input name="submit" type="submit"><!--- Add a submit button ---></td>
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
