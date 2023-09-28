


<h4>HPI PractitionerRole minimum data requirements Get and Search</h4>
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

<tr><td>HPI-PR-MD-1</td>
<td>application can Get a record using the hpi-practitionerrole-id</td>
<td>
  <ul>
    <li> Get: R00000055-Q </li>
    <li> Search: NA </li>
  </ul>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: NA </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> Record returned and appropriate parts displayed correctly (use case dependent).</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - use case dependent</td></tr>

<tr><td>HPI-PR-MD-2</td>
<td>application allows the user to search using the minimum search criteria and displays the search results in order appropriate to use case</td>
<td>
  <li>Get:N/A</li>
  <li>Search: Search criteria (practitioner).</li>
</td>
<td>
   <ul>
     <li> Input:
       <ul>
         <li>97ZABV</li>
       </ul>
     </li>
    <li> Output:
      <ul>
        <li> - Search results displayed in appropriate order (use case dependent).</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - use case dependent</td></tr>

<tr><td>HPI-PR-MD-3</td>
<td>application allows the user to search using other search criteria depending on the use case. <br />
Make sure the search criteria you are using is relevant for the use case (Reference to Health Information Privacy Code 2020, Rule 1).</td>
<td>
  <ul>
    <li>Get:N/A</li>
    <li>Search:
      <ul>
        <li>Practitioner - 97ZABV</li>
        <li>Organisation - GZZ998-G</li>
        <li>Facility - FZZ961-K</li>
        <li>Role code - 542114</li>
        <li>Active - True / False</li>
      </ul>
    </li>
  </ul>
</td>
<td>
   <ul>
     <li> Input:
       <ul>
         <li>hpi-person-id (CPN) an,</li>
         <li>other search criteria can be included</li>
       </ul>
     </li>
    <li> Output:
      <ul>
        <li> - Search results displayed in appropriate order (use case dependent).</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - depdending on use case</td></tr>

<tr><td>HPI-PR-MD-4</td>
<td>application will show the correct error when attempting to search without a Practitioner</td>
<td>
  <ul>
    <li>Get:N/A</li>
    <li>Search: using one of the other criteria only
      <ul>
        <li>Organisation</li>
        <li>Location</li>
        <li>Role</li>
        <li>Active(status)</li>
      </ul>
    </li>
  </ul>
</td>
<td>
   <ul>
     <li> Input:
       <ul>
         <li>other search criteria provided</li>
       </ul>
     </li>
    <li> Output:
      <ul>
        <li> - Error EM07201: Display Required value missing</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - depdending on use case</td></tr>

<tr><td>HPI-PR-MD-5</td>
<td>application does not error, and can provide relevant information for each of the following scenarios. <br />
A PractitionerRole record with:
<ol>
  <li>Practitioner, Facility, Role code</li>
  <li>Practitioner, Organisation,  Role code</li>
  <li>Practitioner, Organisation, Facility, Role code</li>
  <li>Practitioner, Organisation, Facility, Role code, period</li>
</ol>
</td>
<td><b> Do all </b>
<ol>
  <li>
    <ul>
      <li>Get:R00000161-P</li>
      <li>Search: practitioner:97ZABV, location:FZZ961-K, role:542111</li>
    </ul>
  </li>
  <li>
    <ul>
      <li>Get:R00000160-M</li>
      <li>Search: practitioner:97ZABV, organization:GZZ998-G, role:542111</li>
    </ul>
  </li>
  <li>
    <ul>
      <li>Get:R00000162-R</li>
      <li>Search: practitioner:97ZABV, location:FZZ961-K, organization:GZZ998-G, role:512211</li>
    </ul>
  </li>
  <li>
    <ul>
      <li>Get:R00000167-B</li>
      <li>Search: practitioner:97ZABV, location:FZZ961-K, organization:GZZ998-G, role:521111</li>
    </ul>
  </li>
</ol>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> Record returned and appropriate parts displayed correctly (use case dependent).</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - use case dependent</td></tr>

<tr><td>HPI-PR-MD-6</td>
<td>application can make appropriate use of the facility messaging address and / or PractitionerRole messaging address.</td>
<td> <b> Do both </b>
  <ol>
    <li>PracRole without messaging address
      <ul>
        <li>Get:PracRole-ID (withoutEDI)</li>
        <li>Search: Search criteria (withoutEDI).</li>
      </ul>
    </li>
    <li>PracRole with messaging address
      <ul>
        <li>Get:PracRole-ID (withEDI)</li>
        <li>Search: Search criteria (withEDI).</li>
      </ul>
    </li>
  </ol>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application makes appropriate use of messaging address.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - if using messaging address.</td></tr>

<tr><td>HPI-PR-MD-7</td>
<td>application can make appropriate use of contact details <br />
A PractitionerRole record with:
<ul>
  <li>an email address</li>
  <li>a phone number</li>
  <li>contact rank</li>
</ul>
</td>
<td>
  <li>Get:Pracrole-ID (with email and phone).</li>
  <li>Search: Search criteria (with email and phone).</li>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application makes appropriate use of contact details.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - if using contact details</td></tr>

<tr><td>HPI-PR-MD-8</td>
<td>application can make appropriate use of contact details where record has multiple sets, including contact rank. <br />
A PractitionerRole record with:
<ul>
  <li>2 email addresses</li>
  <li>3 phone number's</li>
  <li>mixture of temp and work </li>
  <li>contact rank</li>
</ul>
</td>
<td>
  <li>Get:Pracrole-ID (with 2email and 3phone).</li>
  <li>Search: Search criteria (with 2email and 3phone).</li>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application makes appropriate use of contact details.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory - if using contact details</td></tr>

<tr><td>HPI-PR-MD-9</td>
<td>application makes appropriate use of a PractitionerRole record that is not active (has period end date and end reason).</td>
<td>
  <li>Get:Pracrole-ID (not active).</li>
  <li>Search: Search criteria (not active).</li>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application makes appropriate use of PractitionerRole record that as ended.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>HPI-PR-MD-10</td>
<td>application makes appropriate use of a PractitionerRole record without a period.</td>
<td>
  <li>Get:Pracrole-ID (no period).</li>
  <li>Search: Search criteria (no period).</li>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application makes appropriate use of PractitionerRole record without a period.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>HPI-PR-MD-11</td>
<td>application behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>
  <li>Get:Pracrole-ID (practitioner with c).</li>
  <li>Search: Search criteria (practitioner with c).</li>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li>Get: HPI-PractitionerRole-id</li>
        <li>Search: Criteria provided </li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li> application returns appropriate messaging to user.</li>
      </ul>
    </li>
  </ul>
</td>
<td>Mandatory</td></tr>
</table>



<h4>HPI Create PractitionerRole</h4>
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

<tr><td>HPI-PR-Create-1</td>
<td>application can create a PractitionerRole record with the minimum criteria provided
  <ul>
    <li>hpi-person-id </li>
    <li>hpi-facility-id or hpi-org-id</li>
    <li>role code</li>
  </ul>
</td>
<td>Select required identifiers from the test dataset</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li> User can input minimum data to create a PractitionerRole record </li>
      </ul>
    </li>
    <li> Output
      <ul>
        <li>PractitionerRole record is created with minimum dataset.</li>
      </ul>
    </li>
  </ul>
</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Create-2</td>
<td>application can create a PractitionerRole record with additional items provided <br />
  <ul>
    <li>hpi-person-id </li>
    <li>hpi-facility-id and/or hpi-org-id</li>
    <li>role code</li>
    <li>contact points (as many as required)</li>
    <li>period</li>
    <li>messaging address</li>
  </ul>
</td>
<td>Create record with identifiers from the test dataset <br />
Use all information required by use case <br /></td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li> User can create a PractitionerRole record with the additional items </li>
      </ul>
    </li>
    <li> Output
      <ul>
        <li>PractitionerRole record is created with additional items included.</li>
      </ul>
    </li>
  </ul>
</td>
<td>mandatory - use case dependent</td></tr>

<tr><td>HPI-PR-Create-3</td>
<td>describe the business process used if a health provider asks for their record to be labelled confidential</td>
<td>Create record with identifiers from the test dataset <br />
Use all information required by use case <br /></td>
<td>Description of business process to request Te Whatu Ora to set confidential security label</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Create-error-1</td>
<td>application will show the correct error when attempting to create a PractitionerRole without a Practitioner CPN (hpi-person-id)</td>
<td>Create record with only an hpi-organisation-id or hpi-facility-id</td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text: PractitionerRole.Practitioner</td>
<td>Mandatory</td></tr>

<tr><td>HPI-PR-Create-error-2</td>
<td>application will show the correct error when attempting to create a PractitionerRole without an organisation or facility.</td>
<td>Create record with only an hpi-person-id (CPN)</td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text: PractitionerRole.Facility, PractitionerRole.Organisation</td>
<td>Mandatory</td></tr>

<tr><td>HPI-PR-Create-error-3</td>
<td>application will show the correct error when attempting to create a PractitionerRole without a role code.</td>
<td>Create record without a role code</td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text: PractitionerRole.code</td>
<td>Mandatory</td></tr>

<tr><td>HPI-PR-Create-error-4</td>
<td>aapplication will show the correct error when attempting to create a duplicate PractitionerRole record</td>
<td>Create a duplicte Practitionerrole <a href="glossary.html#practitioner-role">See duplicate definition</a></td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text: PractitionerRole</td>
<td>Mandatory</td></tr>
</table>


<h4>HPI PractitionerRole Update</h4>
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

<tr><td>HPI-PR-Update-1</td>
<td>application can replace the contact details on a PractitionerRole record</td>
<td>Update PracRole xxx with multiple contact details e.g.<br />
<ul>
  <li> system-phone
    <ul>
      <li>use - work</li>
      <li>rank -1</li>
      <li>value-ficticious</li>
    </ul>
  </li>
  <li> system-phone
    <ul>
      <li>use - work</li>
      <li>rank -2</li>
      <li>value-ficticious</li>
    </ul>
  </li>
  <li> system-phone
    <ul>
      <li>use - temp</li>
      <li>rank - 2</li>
      <li>value-ficticious</li>
    </ul>
  </li>
</ul>  
</td>
<td>
  <ul>
    <li> Input
      <ul>
        <li>User can input new contact information</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Contact details are added to the HPI record correctly</li>
        <li>Contact information displayed to the user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory - use case dependent</td></tr>

<tr><td>HPI-PR-Update-2</td>
<td>application can replace just the phone number on a PractitionerRole record</td>
<td>Update PracRole used above with:<br />
<ul>
  <li>Replace this contact:
    <ul>
        <li> system-phone
          <ul>
            <li>use - work</li>
            <li>rank -1</li>
            <li>value-ficticious</li>
          </ul>
        </li>
    </ul>
  </li>
  <li> With this contact information
    <ul>
      <li> system-phone
        <ul>
          <li>use - work</li>
          <li>rank - 5</li>
          <li>value-ficticious</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
</td>
<td>
  <ul>
    <li> Input
      <ul>
        <li>User can input new contact information</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Contact details are added to the HPI record correctly, other contact details remain unchanged</li>
        <li>Contact information displayed to the user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory- use case dependent</td></tr>

<tr><td>HPI-PR-Update-3</td>
<td>application can remove a contactpoint on a PractitionerRole record</td>
<td>Update PracRole used above and remove:<br />
  <li> This contact information
    <ul>
      <li> system-phone
        <ul>
          <li>use - temp</li>
          <li>rank - 2</li>
          <li>value-ficticious</li>
        </ul>
      </li>
    </ul>
  </li>
</td>
<td>
  <ul>
    <li> Input
      <ul>
        <li>User can update contact information</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Output: temp phone is removed from the HPI record, other contact details remain unchanged</li>
        <li>Contact information displayed to the user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory- use case dependent</td></tr>

<tr><td>HPI-PR-Update-4</td>
<td>application can update the contact rank on a PractitionerRole record</td>
<td>
<ul>
  <li>Replace this contact rank:
    <ul>
        <li> system-phone
          <ul>
            <li>use - work</li>
            <li>rank -2</li>
          </ul>
        </li>
    </ul>
  </li>
  <li> With this contact information
    <ul>
      <li> system-phone
        <ul>
          <li>use - work</li>
          <li>rank - 1</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
</td>
<td>
  <ul>
    <li> Input
      <ul>
        <li>User can update contact rank only</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Output: Contact rak is updated, other contact details remain unchanged</li>
        <li>Contact information displayed to the user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory- use case dependent</td></tr>

<tr><td>HPI-PR-Update-5</td>
<td>application can add / replace the messaging address on a PractitionerRole record</td>
<td> update PractitionerRole used above with Messaging address <br />
<ul>
  <li>provider - heathlink </li>
  <li>value “ficticious value”</li>
</ul>
</td>
<td>
  <ul>
    <li> Input
      <ul>
        <li>User can input messaging address</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Output: Messaging address added to the HPI PractitionerRole record correctly</li>
        <li>Contact information displayed to the user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory- use case dependent</td></tr>

<tr><td>HPI-PR-Update-6</td>
<td>application can end a PractitionerRole record</td>
<td> Use role created above <br />
add an end date an end reason </td>
<td>
  <ul>
    <li> Input
      <ul>
        <li> user can add an end date and end reason</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Output: Details displayed to user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Update-6</td>
<td>application can remove an end date on a PractitionerRole record</td>
<td> Use PractitionerRole above <br />
remove the end date an end reason </td>
<td>
  <ul>
    <li> Input
      <ul>
        <li> user can remove an end date and end reason</li>
      </ul>
    </li>
    <li>Output:
      <ul>
        <li>Output: Details displayed to user</li>
      </ul>      
    </li>
  </ul>
</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Update-error-1</td>
<td>application will show the correct error when attempting to update a PractitionerRole record with an end date and no reason</td>
<td> Use PractitionerRole above <br />
add an end date only </td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text:PractitionerRole.statusReason</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Update-error-2</td>
<td>application will show the correct error when attempting to update a PractitionerRole record with an end reason and no end date</td>
<td> Use PractitionerRole above <br />
add an end date only </td>
<td>Error: EM07201 <br />
Display "Required value missing"<br />
Text:PractitionerRole.period.end</td>
<td>mandatory</td></tr>
</table>
