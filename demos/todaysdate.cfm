<!---
	Name: Select List with Current Date
	
	Attributes: None
	
	Description: This tag determines the current date 
		and builds a select list that will allow the 
		user to choose it or change to another day.
		
		It must be used within an html <form> tag

--->
<cfset thedate = now()>

<cfset nowmonth=#Month(thedate)#>
<cfset nowdate=#Day(thedate)#>
<cfset nowyear=#Year(thedate)#>

<!--- MONTH --->
<select name="m">
	<cfif nowmonth IS 1><option selected="selected" value="01">January</option><cfelse><option value="01">January</option></cfif>
	<cfif nowmonth IS 2><option selected="selected" value="02">February</option><cfelse><option value="02">February</option></cfif>
	<cfif nowmonth IS 3><option selected="selected" value="03">March</option><cfelse><option value="03">March</option></cfif>
	<cfif nowmonth IS 4><option selected="selected" value="04">April</option><cfelse><option value="04">April</option></cfif>
	<cfif nowmonth IS 5><option selected="selected" value="05">May</option><cfelse><option value="05">May</option></cfif>
	<cfif nowmonth IS 6><option selected="selected" value="06">June</option><cfelse><option value="06">June</option></cfif>
	<cfif nowmonth IS 7><option selected="selected" value="07">July</option><cfelse><option value="07">July</option></cfif>
	<cfif nowmonth IS 8><option selected="selected" value="08">August</option><cfelse><option value="08">August</option></cfif>
	<cfif nowmonth IS 9><option selected="selected" value="09">September</option><cfelse><option value="09">September</option></cfif>
	<cfif nowmonth IS 10><option selected="selected" value="10">October</option><cfelse><option value="10">October</option></cfif>
	<cfif nowmonth IS 11><option selected="selected" value="11">November</option><cfelse><option value="11">November</option></cfif>
	<cfif nowmonth IS 12><option selected="selected" value="12">December</option><cfelse><option value="12">December</option></cfif>
</select>

<!--- DATE --->		
<select name="d">
	<cfif nowdate IS 01><option selected="selected">01</option><cfelse><option>01</option></cfif>
	<cfif nowdate IS 02><option selected="selected">02</option><cfelse><option>02</option></cfif>
	<cfif nowdate IS 03><option selected="selected">03</option><cfelse><option>03</option></cfif>
	<cfif nowdate IS 04><option selected="selected">04</option><cfelse><option>04</option></cfif>
	<cfif nowdate IS 05><option selected="selected">05</option><cfelse><option>05</option></cfif>
	<cfif nowdate IS 06><option selected="selected">06</option><cfelse><option>06</option></cfif>
	<cfif nowdate IS 07><option selected="selected">07</option><cfelse><option>07</option></cfif>
	<cfif nowdate IS 08><option selected="selected">08</option><cfelse><option>08</option></cfif>
	<cfif nowdate IS 09><option selected="selected">09</option><cfelse><option>09</option></cfif>
	<cfif nowdate IS 10><option selected="selected">10</option><cfelse><option>10</option></cfif>
	<cfif nowdate IS 11><option selected="selected">11</option><cfelse><option>11</option></cfif>
	<cfif nowdate IS 12><option selected="selected">12</option><cfelse><option>12</option></cfif>
	<cfif nowdate IS 13><option selected="selected">13</option><cfelse><option>13</option></cfif>
	<cfif nowdate IS 14><option selected="selected">14</option><cfelse><option>14</option></cfif>
	<cfif nowdate IS 15><option selected="selected">15</option><cfelse><option>15</option></cfif>
	<cfif nowdate IS 16><option selected="selected">16</option><cfelse><option>16</option></cfif>
	<cfif nowdate IS 17><option selected="selected">17</option><cfelse><option>17</option></cfif>
	<cfif nowdate IS 18><option selected="selected">18</option><cfelse><option>18</option></cfif>
	<cfif nowdate IS 19><option selected="selected">19</option><cfelse><option>19</option></cfif>
	<cfif nowdate IS 20><option selected="selected">20</option><cfelse><option>20</option></cfif>
	<cfif nowdate IS 21><option selected="selected">21</option><cfelse><option>21</option></cfif>
	<cfif nowdate IS 22><option selected="selected">22</option><cfelse><option>22</option></cfif>
	<cfif nowdate IS 23><option selected="selected">23</option><cfelse><option>23</option></cfif>
	<cfif nowdate IS 24><option selected="selected">24</option><cfelse><option>24</option></cfif>
	<cfif nowdate IS 25><option selected="selected">25</option><cfelse><option>25</option></cfif>
	<cfif nowdate IS 26><option selected="selected">26</option><cfelse><option>26</option></cfif>
	<cfif nowdate IS 27><option selected="selected">27</option><cfelse><option>27</option></cfif>
	<cfif nowdate IS 28><option selected="selected">28</option><cfelse><option>28</option></cfif>
	<cfif nowdate IS 29><option selected="selected">29</option><cfelse><option>29</option></cfif>
	<cfif nowdate IS 30><option selected="selected">30</option><cfelse><option>30</option></cfif>
	<cfif nowdate IS 31><option selected="selected">31</option><cfelse><option>31</option></cfif>
</select>

<!--- YEAR --->
<cfoutput>		

	<select name="y">
		<cfloop index="x" from="#NowYear#" to="#NowYear+5#">
			<option value="#x#">#x#</option>
		</cfloop>
	</select>
 </cfoutput>