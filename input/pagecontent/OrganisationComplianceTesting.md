


<h4>HPI Organization GET</h4>
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
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Get-1</td>
<td>System behaves appropriately when a dormant hpi-organisation-id is requested</td>
<td>GZZ995-A</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Get-2</td>
<td>System behaves appropriately when the organisation requested is no longer active</td>
<td>GZZ903-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>
</table>

<h4>HPI Organization SEARCH</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Search for ‘New Zealand Army’ <br /> Search for ‘Hosptial Pharmacy’</td>
<td>Organisation name is supplied and returns results</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-2</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>

<tr>
<td>HPI-O-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Search for ‘Discount Pharmaceuticals Limited’</td>
<td>System allows user to view aliases before selecting a result <br /> Name= TryNSave Discount Pharmacy <br /> Alias= Discount Pharmaceuticals Limited <br /> HPI-O= GZZ869-G</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-4</td>
<td>System can search using the NZBN identifier</td>
<td>NZBN= 9999999999057</td>
<td>HPI details for GZZ920-C are presented</td>
<td>optional</td>
</tr>
</table>
