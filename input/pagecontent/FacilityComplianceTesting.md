


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
<td>*Mandatory if appropriate for use case</td>
</tr>

<tr><td>HPI-L-Get-2</td>
<td>System behaves appropriately when the location requested is no longer active</td>
<td>FZZ754-E <br /> FZZ753-C</td>
<td>System returns appropriate messaging to user</td>
<td>*Mandatory if appropriate for use case</td>
</tr>

<tr><td>HPI-L-Get-3</td>
<td>System behaves appropriately when more than one contact point is present</td>
<td>FZZ968-B</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>*Mandatory if appropriate for use case</td>
</tr>

<tr><td>HPI-L-Get-4</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>FZZ065-D</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td>*Optional</td>
</tr>

<tr><td>HPI-L-Get-5</td>
<td>System presents the address parts appropriately</td>
<td>FZZ961-K <br /> FZZ960-H <br /> FZZ959-A <br /> FZZ958-K <br /> FZZ065-D</td>
<td>All address formats are displayed appropriately</td>
<td>*Mandatory if appropriate for use case</td>
</tr>

<tr><td>HPI-L-Query-1</td>
<td>System behaves appropriately when a dormant hpi-facility-id is requested</td>
<td>NZHIS (Legacy) identifier Z999</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>*Mandatory if appropriate for use case</td>

<tr><td>HPI-L-Query-2</td>
<td>System presents the address parts appropriately</td>
<td>NZHIS (Legacy) identifier 9987</td>
<td>Address is displayed appropriately</td>
<td>*Mandatory if appropriate for use case</td>
</tr>
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

<tr><td>HPI-L-Search-1-name</td>
<td>Minimum search criteria are included</td>
<td>Name = “Red Diamond”</td>
<td>
  <ul> Output:
    <li>Facility name is supplied and returns results </li>
    <li>Search results are presented to user in order provided by the HPI, if not please provide a reason</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>
</tr>

<tr><td>HPI-L-Search-2-name</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Name = “Red Diamond Pukekohe”</td>
<td>
  <ul> Output:
    <li>System allows user to view aliases before selecting a result</li>
    <li>Alias= Red Diamond Pukekohe</li>
    <li>"Red Diamond Generic Medical Centre- Pukekohe</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>

<tr><td>HPI-L-Search-3-address</td>
<td>System cn search for facility using the address</td>
<td>Address = "133 molesworth”</td>
<td>
  <ul> Output:
    <li>System allows user to search for facility by address</li>
    <li>Results used appropriately</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>

<tr><td>HPI-L-Search-4-name and address</td>
<td>System can search for facility using name and address</td>
<td><ul>
  <li>Name = Acupuncture</li>
  <li>Address = 133 molesworth</li>
</ul>
</td>
<td>
  <ul> Output:
    <li>System allows user to search for facility by name and address</li>
    <li>Results used appropriately</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>

<tr><td>HPI-L-Search-5-organization</td>
<td>System can search for facility using managing organization</td>
<td><ul>
  <li>organization = GZZ018-B</li>
</ul>
</td>
<td>
  <ul> Output:
    <li>System allows user to search for facility by managing organization</li>
    <li>Results used appropriately</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>

<tr><td>HPI-L-Search-6-type</td>
<td>System can retrieve all facilities of a spcific type <br />
<a href="general.html#extract-style-hpi-searches">Clikc here for more information on batch style searching</a></td>
<td>Search for all facilities that are of a type appropriate to the use case e.g. pharm (pharmacies)</td>
<td>
  <ul> Output:
    <li>System allows user to search for facility by type</li>
    <li>Results used appropriately</li>
  </ul>
</td>
<td>*Mandatory if appropriate for use case</td>
</table>
