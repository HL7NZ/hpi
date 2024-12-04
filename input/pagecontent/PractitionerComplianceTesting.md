


<h4>HPI Practitioner GET</h4>
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

<tr><td>HPI-P-Get-1</td>
<td>System can handle a response when a dormant hpi-person-id is requested</td>
<td>99ZZRT <br /> 90ZZJF</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-2</td>
<td>System can display the information required to confirm a health providers identity <br />
Full name <br />
hpi-person-id (CPN) <br />
Registration type (RA Provider only) </td>
<td> 91ZZWJ <br /> 90ZZLC </td>
<td>System displays information required to confirm identity</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-3</td>
<td>System can handle a response when practitioner has <br /> only a surname; <br /> only a given name; <br /> Has both official and usual names</td>
<td> <b>Do all</b> <br /> 91ZZWJ <br /> 91ZZVR <br /> 93ZZWU</td>
<td>System does not error <br /> System returns all name parts when present <br /> Order of name parts is clear to the user <br /> System should retain the name as a Family name when a practitioner has only a Given Name on the HPI </td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-4</td>
<td>System behaves appropriately when the requested practitioner has more than one registration</td>
<td><b>Do all</b> <br /> 95ZZEJ (dental/nursing) <br /> 98ZZNY (nursing/medical)<br /> 95ZZQE (medical sciences/nursing)<br /> 98ZZQJ (nursing/midwifery)<br /> 95ZZDR (nursing/psychology)<br /> 95ZZDE (optometry/nursing)</td>
<td>The appropriate registration is used or both registrations are presented</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-5</td>
<td>System behaves appropriately when the requested practitioner has more than one Scope of Practice</td>
<td><b>Do all</b> <br /> 98ZZNY <br /> 90ZZJF <br /> 98ZZNM</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-6</td>
<td>System behaves appropriately when the requested practitioner does not have a registration (qualification)</td>
<td>90ZZLC <br /> 90ZZLP</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-7</td>
<td>System behaves appropriately for all registration (qualification) statuses</td>
<td><b>Do all</b> <br /> 98ZZYU (Current)<br /> 98ZZYH (Inactive) <br /> 98ZZXQ (Removed) <br /> 98ZZXD (Suspended)</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-8</td>
<td>System clearly distinguishes between educational qualifications and registration details</td>
<td>97ZZYP <br /> 94ZZXF <br /> 97ZZYC <br /> 94ZZWZ <br /> 97ZZXW</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-9</td>
<td>System clearly displays all condition’s of practice / additional authorisation’s to user</td>
<td> TBC </td>
<td>System returns appropriate messaging to user</td>
<td>optional</td></tr>

<tr><td>HPI-P-Get-10</td>
<td>When a system is assessing a practitioners authority to practice that both the APC period and the registration status is used</td>
<td>90ZZSR <br /> 90ZZMG</td>
<td>The user is informed the practitioners APC has expired</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-11</td>
<td>System behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>93ZZRW <br /> 96ZZSG <br /> 98ZZWL</td>
<td>System does not error <br /> System returns appropriate messaging to user <br /> For more information see [Confidentiality](./businessView.html#confidentiality) and [Redacted Practitioner details](./StructureDefinition-HPIPractitioner.html#redacted-practitioner-details)</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-12</td>
<td>System behaves appropriately when practitioner record has a date of death</td>
<td>90ZZLP <br /> 90ZZMG <br /> 92ZZSJ <br /> 92ZZRR</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Query-1</td>
<td>System can query a practitioner using the registration identifier eg Medical Council number, Nursing Council number <br /> Show a selection of RA's that apply</td>
<td>Medical Council <br /> Medical Council #= 99478 <br /> <br /> Nursing Council <br /> Nursing Council #= 961049 <br /> <br /> Medical Sciences Council <br /> Medical Sciences Council #= 30-91697</td>
<td>System retrieves record successfully</td>
<td>optional</td></tr>
</table>

<h4>HPI Practitioner Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>*NOTE: Access is restricted to Practitioner Search by name and date of birth – prior permission should be sort from the <a href="mailto:integration@health.govt.nz">Integration team</a>before developing this functionality into an application</caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Name = Walter O’Reilly <br /> Name = Brian Hunnicutt</td>
<td>A name is provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-2</td>
<td>Other search criteria are included</td>
<td>Name = Walter O’Reilly <br />
Birthdate = 1943-05-24 <br />
Gender = male <br />
Name = Brian Hunnicutt <br />
Birthdate = 1939-02-06 <br />
Gender = male</td>
<td>Name, gender and birthdate can be provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-3</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>
</table>
