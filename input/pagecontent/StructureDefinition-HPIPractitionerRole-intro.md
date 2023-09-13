
### HPI PractitionerRole

Holds the relationship details of practitioners to the places where they work and the organizations they work for, and the role they have there.

<h4>Practitioner Role Attributes</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>PractitionerRole Attribute</th>
<th>Description</th></tr>

<tr>
<td>PractitionerRole-creator</td>
<td>The Person and Organisation that created the PractitionerRole record</td>
</tr>

<tr>
<td>PractitionerRole-status-reason</td>
<td>The reason that the PractitionerRole record was ended <br /> Only present when a PractitionerRole has a period end date</td>
</tr>

<tr>
<td>Messaging-address</td>
<td>The electronic messaging address for the person's role <br /> Only to be used if the Facility messaging address is not appropriate for the specific role <br> Used for the edi-address</td>
</tr>

<tr>
<td>identifier:RI</td>
<td>The unique PractitionerRole record identifier</td>
</tr>

<tr>
<td>Active</td>
<td>Whether this PractitionerRole record is in active use <br /> This is a derived field from the period start and end dates</td>
</tr>

<tr>
<td>Period</td>
<td>The start and end dates for a PractitinerRole</td>
</tr>

<tr>
<td>Practitioner</td>
<td>The Practitioner assigned to the role <br /> hpi-person-id (CPN) and name</td>
</tr>

<tr>
<td>Organization</td>
<td>The Organisation the Practitioner works for in this role <br /> hpi-organization-id and name </td>
</tr>

<tr>
<td>Code</td>
<td>The role he Practitioner is assinged</td>
</tr>

<tr>
<td>Location</td>
<td>The Facility the Practitioner works at in this role <br /> hpi-facility-id and name </td>
</tr>

<tr>
<td>Telecom</td>
<td>The Contact details for this person in this role</td>
</tr>
</table>
