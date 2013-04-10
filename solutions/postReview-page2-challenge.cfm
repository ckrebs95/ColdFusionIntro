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
    <td><p>Your review appears below:</p>
	<cfif isDefined('FORM.movie_id')>
		<cfif isNumeric(FORM.movie_id)>
		 <cfoutput>
		  <table width="100%" border="1">
			 <tr>
			  <th width="100">Movie ID </th>
			  <td>#FORM.movie_id#</td>
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
		  <cfelse>
				ERROR - You might have left a field blank.
		  </cfif>
		<cfelse>
			  ERROR - You must begin at postReview.cfm.
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
