<cfcomponent>
	<cffunction name="buildTable" access="public" returntype="string">
		<cfargument name="getdata" type="query" required="yes">
			<cfsavecontent variable="textToReturn">
			<p>This function will display a table for any recordset passed to it.  Think of it as a customized cfdump!</p>

			<table border="1" cellspacing="0" cellpadding="1">
				<cfoutput>
				<tr bgcolor="##aaeeaa">
					<cfloop index="current_item" list="#getdata.ColumnList#">
					<td>#current_item#</td>
					</cfloop>
				</tr>
				</cfoutput>
				
				<cfoutput query="getdata">
					<tr bgcolor="##ffffff">
					<cfloop index="current_item" list="#getdata.ColumnList#">
					<td>#Evaluate(current_item)#</td>
					</cfloop>
					</tr>
				</cfoutput>
			</table>
			</cfsavecontent>
		<cfreturn textToReturn>
	</cffunction>
</cfcomponent>