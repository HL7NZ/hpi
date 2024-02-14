


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
<td>*mandatory if appropriate for use case</td>
</tr>

<tr>
<td>HPI-O-Get-2</td>
<td>System behaves appropriately when the organisation requested is no longer active</td>
<td>GZZ903-C</td>
<td>System returns appropriate messaging to user</td>
<td>*mandatory if appropriate for use case</td>
</tr>

<tr>
<td>HPI-O-Query-1</td>
<td>System behaves appropriately when a dormant hpi-organisation-id is requested</td>
<td>
  <ul>
    <li>NZBN - 9999999999003 </li>
    <li>Legacy agency code (NZHIS) - 9002</li>
  </ul>
</td>
<td>System returns appropriate messaging to user</td>
<td>*mandatory if appropriate for use case</td>
</tr>

<tr>
<td>HPI-O-Query-2</td>
<td>System behaves appropriately when the organisation requested is no longer active</td>
<td>
  <ul>
    <li>NZBN - 9999999999072 </li>
    <li>Legacy agency code (NZHIS) - 9975</li>
  </ul>
</td>
<td>System returns appropriate messaging to user</td>
<td>*mandatory if appropriate for use case</td>
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
<td>HPI-O-Search-1-name</td>
<td>Minimum search criteria are included</td>
<td>Search for ‘New Zealand Army’ <br /> Search for ‘Hosptial Pharmacy’</td>
<td>Organisation name is supplied and returns results</td>
<td>*mandatory if appropriate for use case</td>
</tr>

<tr>
<td>HPI-O-Search-2-name</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>*mandatory if appropriate for use case</td>
</tr>

<tr>
<td>HPI-O-Search-3-name</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Search for ‘Discount Pharmaceuticals Limited’</td>
<td>System allows user to view aliases before selecting a result <br /> Name= TryNSave Discount Pharmacy <br /> Alias= Discount Pharmaceuticals Limited <br /> HPI-O= GZZ869-G</td>
<td><td>*mandatory if appropriate for use case</td></td>
</tr>

<tr>
<td>HPI-O-Search-3-name</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Search for ‘Discount Pharmaceuticals Limited’</td>
<td>System allows user to view aliases before selecting a result <br /> Name= TryNSave Discount Pharmacy <br /> Alias= Discount Pharmaceuticals Limited <br /> HPI-O= GZZ869-G</td>
<td><td>*mandatory if appropriate for use case</td></td>
</tr>

<tr>
<td>HPI-O-Search-4-partof</td>
<td>System can retrieve organisatons that are 'part of' another organisation</td>
<td>Search for organisatons that are 'part of' GZZ836-C</td>
<td>System can display the organisations that are 'part of'GZZ836-C</td>
<td><td>*mandatory if appropriate for use case</td></td>
</tr>

<tr>
<td>HPI-O-Search-5-type</td>
<td>System can retrieve all organisatons of a specific type  <br />
<a href="general.html#additional-search-parameters">Click here for more information on additional search parameters</a></td>
<td>Search for organisatons that are of a type appropriate to the use case e.g. 009 Primary Health Organisation (PHO)</td>
<td>System can retireve all organisations of specific type </td>
<td><td>*mandatory if appropriate for use case</td></td>
</tr>
</table>
