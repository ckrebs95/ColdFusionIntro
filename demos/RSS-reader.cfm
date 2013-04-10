<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Read from RSS Feed</title>
</head>
<body>
<h1>Current Yahoo Pet News</h1>
<cffeed action="read" name="petnews" source="http://rss.news.yahoo.com/rss/pets" query="mydata">

<!--- <cfdump var="#petnews#"/> --->
<!--- <cfdump var="#mydata#"/> --->

<cfoutput query="mydata">
	<h3><a href="#rsslink#">#title#</a></h3>
	<p>#content#</p>
</cfoutput>

</body>
</html>
