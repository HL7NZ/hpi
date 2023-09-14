### Compliance testing

Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
  a. Organisation Name <br />
  b. Application name and version <br />
  c. HPI IG Version <br />
  d. Test Script version <br />
  e. FHIR release version <br />
  f. Testing start date and time and end date and time <br />
  g. Tester name and contact details <br />
  h. List of interactions included in your integration (eg Get Practitioner, Get Location, Search Location)

2. For each test supply screen shots of the user interface for:
    * the input data as entered in the integrating application (“the application”)
    * the output:
      * any error messages presented by the application
      * the confirmation or result of the request presented by the application
    * For update operations the state of the record pre-request should be included. 
    * **Note**: If non-interactive, please provide JSON request (update / add) or response (get/search).

3. For each test supply a timestamp when each request is sent.


### Tests

**Mandatory vs Optional tests**
* If there are tests below that are labelled mandatory but do fit the application's use case then please let us know why.
* Some tests are labelled *mandatory if*. These tests are Mandatory only if you are using this piece of data for your use case.

<h4>Security and Audit Assessment</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>All test messages will be assessed against the security criteria in the table below</caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>Security 1</td>
<td>Credentials match those issued to the testing organisation <br /> and their orgID and appID are auditing correctly</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 2</td>
<td>Sending user ID is an end user ID or a hpi-person-id</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request (Please make sure a seperate user creates a request)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 4</td>
<td>Each request has a unique request id in the X-Correlation-Id field <br />
If present this will be returned in the response</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Recommended</td></tr>
</table>


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
<td>System does not error <br /> System returns appropriate messaging to user <br /> For more information see [Confidentiality](/businessView.html#confidentiality) and [Redacted Practitioner details](/StructureDefinition-HPIPractitioner.html#redacted-practitioner-details)</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-12</td>
<td>System behaves appropriately when practitioner record has a date of death</td>
<td>90ZZLP <br /> 90ZZMG <br /> 92ZZSJ <br /> 92ZZRR</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>
</table>

<h4>HPI Practitioner Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>*NOTE: Access is restricted to Practitioner Search by name and date of birth – prior permission should be sort from the [Integration team](mailto:integration@health.govt.nz) before developing this functionality into an application</caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Search-1</td>
<td>System can search using the practitioner’s registration identifier eg Medical Council number, Nursing Council number</td>
<td>Medical Council <br /> Medical Council #= 99478 <br /> <br /> Nursing Council <br /> Nursing Council #= 961049 <br /> <br /> Medical Sciences Council <br /> Medical Sciences Council #= 30-91697</td>
<td>System retrieves record successfully</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-2</td>
<td>Minimum search criteria are included</td>
<td>Name = Walter O’Reilly <br /> Name = Brian Hunnicutt</td>
<td>A name is provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-3</td>
<td>Other search criteria are included</td>
<td>Name = Walter O’Reilly <br />
Birthdate = 1943-05-24 <br />
Gender = male <br />
Name = Brian Hunnicutt <br />
Birthdate = 1939-02-06 <br />
Gender = male</td>
<td>Name, gender and birthdate can be provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-4</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>
</table>


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
