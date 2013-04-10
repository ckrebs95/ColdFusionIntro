<cfquery datasource="movieList" name="getMovies">
	SELECT name, summary
	FROM movies
	ORDER BY name
</cfquery>

<cfset theProperties = StructNew()>
<cfset theProperties.version = "rss_2.0" />
<cfset theProperties.title = "Messages" />
<cfset theProperties.link = "http://mysite.com" />
<cfset theProperties.description = "Create an RSS Feed" />
<cfset theProperties.pubDate = Now() />

<cfset theColumns = StructNew()>
<cfset theColumns.content = "summary"/>
<cfset theColumns.title = "name"/>
<cfset columnMapStruct.publisheddate = Now()/> 

<cffeed action="create" query="#getMovies#" properties="#theProperties#" xmlvar="theOutput" columnmap="#theColumns#">

<cfoutput>
#XMLParse(theOutput)#	
</cfoutput>
