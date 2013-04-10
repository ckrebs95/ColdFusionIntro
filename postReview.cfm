<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - Post Review</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="mymovies.css" rel="stylesheet" type="text/css">
</head>

<body>
<cfparam name="form.movie" default="">
<cfparam name="form.user" default="">
<cfif #form.movie# eq "0">
	<cflocation url="./postreview.cfm?msg=You+must+select+a+movie.">
    <cfabort>
</cfif>
<cfif #form.movie# neq "">
  <cfquery name="moviedetail" datasource="movielist">
      select movie_id
          , name
      from movies
      where movie_id= #form.movie#
  </cfquery>
</cfif>
<cfquery name="allmovies" datasource="movieList">
	select movie_id
    	, name
    from movies
    order by name
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
    <td><p>Please post your review:<cfif isdefined('url.msg')><cfoutput> <div style="font-weight:bold; color:red;">#url.msg#</div></cfoutput></cfif></p>
    	<!---
		1 - Add a form tag
		2 - Inside the form tag, build a table with 4 rows and 2 columns
		3 - In individual table rows add:
			a - two text fields (movie_id and reviewer_name)
			b - a textarea field for the review
			c - a submit button
		--->
      <cfif isdefined('form.formsubmitted')>
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
                    	#form.user#
                    </cfoutput>
                </td>
            </tr>
            <tr>
            	<th>
                	Review
                </th>
                <td>
                	<cfoutput>
                    	#form.review#
                    </cfoutput>
                </td>
            </tr>
         </table>
         <br/>
       </cfif>
       <cfparam name="form.name" default="">
	  <form method="post" action="postReview.cfm">
      	<input type="hidden" name="formsubmitted" value="True">
      	<table border="1">
        	<tr>
            	<th>
                	Movie
                </th>
                <td>
                	<select name="Movie">
                    	<option value="0" selected>---Select Movie---</option>
                    	<cfoutput query="allmovies">
                        	<option value="#movie_id#">#name#</option>
                        </cfoutput>
                    </select>
                </td>
            </tr>
            <!---<tr>
            	<th>
                	CFSelect
                </th>
                <td>
                <cfform>
                	<cfselect name="MovSel">
                    	<option value="0" selected>---CFSelect---</option>
                        <cfoutput query="allmovies">
                        	<option value="#movie_id#">#name#</option>
                        </cfoutput>
                    </cfselect>
                 </cfform>
                </td>
            </tr>--->
            <tr>
            	<th>
                	Your Name
                </th>
            	<td>
                	<cfoutput>
                		<input type="text" name="user" value="#form.user#">
                    </cfoutput>
                </td>
            </tr>
            <tr>
            	<th>
                	Review
                </th>
                <td>
                	<textarea name="review" cols="40" rows="5" wrap="virtual"></textarea>
                </td>
            </tr>
            <tr>
            	<td colspan="2">
                	<input type="submit">
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
