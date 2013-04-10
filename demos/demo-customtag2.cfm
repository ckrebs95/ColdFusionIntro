<html>
<head>
	<title>Demo: Customs Tags (passing parameters)</title>
</head>
<body>
<cfif NOT isdefined('beenhere')>
<h2>Please select the date and/or the time</h2>
	<form>
		Show the date:<br>
		<select name="showdate">
			<option>yes</option>
			<option>no</option>
		</select><br>
		Show the time:<br>
		<select name="showtime">
			<option>yes</option>
			<option>no</option>
		</select><br>
		<input type="hidden" name="beenhere" value="true">
		<input type="submit">
	</form>
<cfelse>
	This is what you chose to see:<br>
	<cf_showdate showdate="#URL.showdate#" showtime="#URL.showtime#" firstname="Scott"><br>
	You chose to see <cfoutput>#VARIABLES.number#</cfoutput> piece(s) of information.
	<form>
	<input type="submit" value="reset">
	</form>
</cfif>
</body>
</html>
