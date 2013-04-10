<!---
	Name:  Display Year
	Description:  Creates a select list that displays six years starting with the current year
	Attributes: fieldName - the name of the select list
		(optional - default: yearField)
--->
<cfoutput>
	<cfparam name="ATTRIBUTES.fieldName" default="yearField">
	<cfset CurrentYear=Year(Now())>
	<select name="#ATTRIBUTES.fieldName#">
		<cfloop index="x" from="#CurrentYear#" to="#CurrentYear+5#">
			<option value="#x#">#x#</option>
		</cfloop>
	</select>
</cfoutput>