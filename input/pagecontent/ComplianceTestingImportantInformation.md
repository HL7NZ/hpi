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
  h. List of operations included in your integration (eg Get Practitioner, Get Location, Search Location)

2. For each test supply screen shots of the user interface for:
    * the input data as entered in the integrating application (“the application”)
    * the output:
      * any error messages presented by the application
      * the confirmation or result of the request presented by the application
    * For update operations the state of the record pre-request should be included. 
    * **Note**: If non-interactive, please provide JSON request (update / create) or response (get/search).

3. For each test supply a timestamp when each request is sent.

### Compliance tests

Not all compliance tests in this implementation guide will be appropriate for every application. If there are tests that do not apply please discuss this with the integration team and where appropriate write a description in the compliance test submission why the particular test does not apply.

**Mandatory vs Optional tests**
* If there are tests below that are labelled mandatory but do fit the application's use case then please let us know why.
* Some tests are labelled *mandatory if*. These tests are Mandatory only if you are using this piece of data for your use case.

To request a template for the compliance tests either add a comment to your onboarding request form or reach out using the [Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

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

<h4>General tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>These tests apply to all integrations</b></caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory / Optional / Recommended</th></tr>

<tr><td>General-1</td>
<td>Application can handle an HTTP 429 error in a graceful way</td>
<td>The application reaches its usage plan limit and is returned an HTTP 429 error. <a href="general.html#usage-plans">See Usage plans</a></td>
<td>The application will retry several times with an exponentially increasing delay</td>
<td>Recommended</td></tr>

<tr><td>General-2</td>
<td>Application can present the HPI terms of use to individual user's when the integrating application first goes live for an Organisation. A reference terms of use is supplied, or the HPI terms of use can be included as part of the application's terms of use.</td>
<td><a href="TermsOfUse.html">See Terms Of Use</a></td>
<td><li>The application will display terms of use to the end user</li>
<li>The application must store the end users acceptance of the terms</li></td>
<td>Recommended</td></tr>
</table>
