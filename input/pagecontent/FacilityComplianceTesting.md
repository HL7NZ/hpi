


<h4>HPI Location/Facility GET</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Get-1</td>
<td>System behaves appropriately when a dormant hpi-facility-id is requested</td>
<td>FZZ997-J</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-2</td>
<td>System behaves appropriately when the location requested is no longer active</td>
<td>FZZ754-E <br /> FZZ753-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-3</td>
<td>System behaves appropriately when more than one contact point is present</td>
<td>FZZ968-B</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-4</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>FZZ065-D</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td></td></tr>

<tr><td>HPI-L-Get-5</td>
<td>System presents the address parts appropriately</td>
<td>FZZ961-K <br /> FZZ960-H <br /> FZZ959-A <br /> FZZ958-K <br /> FZZ065-D</td>
<td>All address formats are displayed appropriately</td>
<td></td></tr>
</table>

<h4>HPI Location/Facility Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Name = “Red Diamond”</td>
<td>Facility name is supplied and returns results</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-2</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Name = “Red Diamond Pukekohe”</td>
<td>System allows user to view aliases before selecting a result <br /> Name= Pukekohe Diamond Doctors <br /> Alias= Pukekohe Diamond Doctors <br /> HPI = F=FZZ857-D</td>
<td>mandatory</td></tr>
</table>
