<!---
	Name: Select List with Current Date
	
	Attributes: showdate (optional) - yes(default)/no
				showtime (optional) - yes/no
	
	Description: This tag determines the current date 
		and displays the date and/or the time
--->

<!--- Set defaults for optional attributes --->
<cfparam name="ATTRIBUTES.showdate" default="yes">
<cfparam name="ATTRIBUTES.showtime" default="yes">

<cfset thedate=now()>
<cfif ATTRIBUTES.firstname is "Melanie">
	<h2>Hi Melanie</h2>
</cfif>
<cfif ATTRIBUTES.showdate IS "yes">
	<br>
	Today's date is:<br>
	<cfoutput><b>#DateFormat(thedate, 'medium')#</b></cfoutput><br>
</cfif>

<cfif ATTRIBUTES.showtime IS "yes">
	<br>
	The Current Time is:<br>
	<cfoutput><b>#TimeFormat(thedate, 'medium')#</b></cfoutput><br>
</cfif>

<!--- Set Caller.number variable --->
<cfif ATTRIBUTES.showtime IS "no" AND ATTRIBUTES.showdate IS "no">
	<br>
	YOU CHOSE TO SEE NOTHING!!
	<cfset CALLER.number=0>
<cfelseif ATTRIBUTES.showtime IS "yes" AND ATTRIBUTES.showdate IS "yes">
	<cfset CALLER.number=2>
<cfelse>
	<cfset CALLER.number=1>	
</cfif>



