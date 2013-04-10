<html>
<head>
	<title>Demo-functions</title>
</head>

<body>
<h2>Here are some common built in functions</h2>

<p>In all cases, the string in double-quotes may be replaced with a variable<p>

<p>
<b>#RandRange(1, 100)#</b> <i>(Random Number between 1 and 100):</i> <cfoutput>#RandRange(1, 100)#</cfoutput><br>
</p>

<p>
<b>#DollarFormat(236.45)#</b> <i>(Display as US Currency):</i> <cfoutput>#DollarFormat(236.45)#</cfoutput><br>
</p>

<p>
<b>#Ucase("Thornton")#</b> <i>(Convert to all upper case):</i> <cfoutput>#Ucase("Thornton")#</cfoutput><br>
</p>

<p>
<b>#HTMLEditFormat("< p>This would < b>normally</ b> be displayed as HTML</ p>")#</b> <i>(Converts < and > into '& gt;' and '& lt;'"):</i> <cfoutput>#HTMLEditFormat("<p>This would <b>normally</b> be displayed as HTML</p>")#</cfoutput><br>
</p>

<p>
<b>#Left("ColdFusion is fun", 6)#</b> <i>(Select first 6 six characters on the left):</i> <cfoutput>#Left("ColdFusion is fun", 6)#</cfoutput><br>
</p>

<p>
<b>#Right("ColdFusion is fun", 6)#</b> <i>(Select first 6 six characters on the right):</i> <cfoutput>#Right("ColdFusion is fun", 6)#</cfoutput><br>
</p>

<p>
<b>#isNumeric("1")#</b> <i>(returns YES or NO):</i> <cfoutput>#isNumeric("1")#</cfoutput><br>
</p>

</body>
</html>
