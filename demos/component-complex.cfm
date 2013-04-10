<html>
<head><title>Demo: Using Components</title></head>
<body>
<!---
	This is phase one: determine whether the user will search
	by last name or see the whole table
--->
<cfif NOT isDefined("searchtype") OR URL.searchtype IS "">
	<h2>Would you like to see the whole listing or search the database by last name?</h2>
	<form method="GET">
		<select name="searchtype" >
			<option value="">Please Select One:</option>
			<option value="ALL">Show me the entire table</option>
			<option value="SEARCH">Search the table by Last Name</option>
		</select>
		<input type="submit" value="OK, Search!">
	</form>
<!---
	This is phase two: If the user selects "all," invoke 
	the "getAllRecords" method of the component named 
	"component-query"
--->	
<cfelseif URL.searchtype IS "ALL">
	<cfinvoke component="component-query" method="getAllRecords">
<!---
	This is phase three: If the user selects "search," 
	provide a form for the entry of last name
--->	
<cfelseif URL.searchtype IS "SEARCH">
	<h2>Please enter the last name you would like to search for</h2>
	<form method="GET">
		Last Name: <input type="text" name="lastname"><br>
		<input type="submit" value="OK, Search!">
		<input type="hidden" name="searchtype" value="GO">
	</form>
<!---
	This is phase four:  invoke the "searchRecords" method 
	of the component named "component-query" passing the 
	entered value for last name
--->
<cfelseif URL.searchtype IS "GO">
	<cfinvoke component="component-query" method="searchRecords" lastname="#URL.lastname#">
</cfif>
</body>
</html>
