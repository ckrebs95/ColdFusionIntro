<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Post Review</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="mymovies.css" rel="stylesheet" type="text/css">
</head>

<body>
<cfif #url.movie# eq "X">
	<cflocation url="./postreview.cfm?msg=You+must+select+a+movie.">
    <cfabort>
</cfif>
<cfquery name="moviedetail" datasource="movielist">
	select movie_id
    	, name
    from movies
    where movie_id= #url.movie#
</cfquery>

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
	 <!---
	   - Add a table that will hold all of the FORM variables
	     passed from postReview.cfm
	   - Remember to add a <cfoutput> tag
	 --->
     		<table border="1">
        	<tr>
            	<th>
                	Movie
                </th>
                <td>
                	<cfoutput>
                    	#moviedetail.name#
                    </cfoutput>
                </td>
            </tr>
            <tr>
            	<th>
                	Your Name
                </th>
            	<td>
                	<cfoutput>
                    	#url.user#
                    </cfoutput>
                </td>
            </tr>
            <tr>
            	<th>
                	Review
                </th>
                <td>
                	<cfoutput>
                    	#url.review#
                    </cfoutput>
                </td>
            </tr>
         </table>
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
