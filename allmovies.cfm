<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My Movie Reviews - All Movies</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="mymovies.css" rel="stylesheet" type="text/css">
</head>

<body>
 
	  <cfquery name="getMovies" datasource="movieList">
      	select name
        	, genre
            , movie_id
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
<cfif isdefined('url.msg')>
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
   
     <p>Movie List: (<cfoutput>#getmovies.recordcount# records</cfoutput>)</p>
     <cfoutput>
     	<div style="font-weight:bold; color:red;">
        	#url.msg#
        </div>
     </cfoutput> 
     <br/>
      <!---<cfdump var="#getMovies#">--->
      <table border="1">
      	<tr>
        	<th>
            	Movie Name
            </th>
            <th>
            	Genre
            </th>
            <th>
            	Movie ID
            </th>
        </tr>
        <cfoutput query="getMovies">
        	<tr>
            	<td>
                	<a href="movieDetails.cfm?movie_id=#movie_id#">#name#</a>
                </td>
                <td>
                	#genre#
                </td>
                <td>
                	#movie_id#
                </td>
            </tr>
        </cfoutput>
     </table>
<cfelse>	
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
    

     <p>Movie List: (<cfoutput>#getmovies.recordcount# records</cfoutput>)</p> 
      <!---<cfdump var="#getMovies#">--->
      <table border="1">
      	<tr>
        	<th>
            	Movie Name
            </th>
            <th>
            	Genre
            </th>
            <th>
            	Movie ID
            </th>
        </tr>
        <cfoutput query="getMovies">
        	<tr>
            	<td>
                	<a href="movieDetails.cfm?movie_id=#movie_id#">#name#</a>
                </td>
                <td>
                	#genre#
                </td>
                <td>
                	#movie_id#
                </td>
            </tr>
        </cfoutput>
     </table>
</cfif>      
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
  <tr> 
    <td colspan="2" valign="top"> 
	<cfinclude template="footer-date.cfm">
	</td>
  </tr>
</table>

</body>
</html>
