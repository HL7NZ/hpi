

### Who can apply for access?

#### To the test environment:
All organisations and software vendors will be given access to all the HPI api operations in the HIP Compliance environment for testing and training after
completing the on-boarding process described below.

#### To the production environment:
Access to **HPI Organisation and HPI Facility Get and Search** operations is available to all health providers, responsible authorities and organisations who
provide supporting services to health providers and responsible authorities.

(Definitions: A health provider means a person or an organisation that provides, or arranges the provision of, personal health services or public health
services-reference section 2, Health Act 1956. A responsible authority is an organisation responsible for the registration of practitioners-reference section 5,
Health Practitioners Competence Assurance Act 2003).

Health providers and responsible authorities with existing HPI Data Access and Provision Agreements will be given access to Get and Search Practitioner under those
agreements. This includes District Health Boards, ACC and health agencies employing practitioners to deliver health services e.g. Laboratories.

Health providers without an agreement wanting access to **Get, Search, Update and Create Practitioner** and any organisations wanting access to **PractitionerRole Get, Search,
Update and Create** operations will need to apply to Te Whatu Ora / Health New Zealand (HNZ). The application will be assessed by HNZ sector digital channels. If granted, an access agreement may be required prior to credentials being issued to production.


### On-boarding and Implementation

1. To get started, complete the [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67). You will need to provide information about your organisation and the API you will integrate with.
2. Once your onboarding request has been approved, you will be provided with the information to start integration. The integration team will be in touch if further information is required.
  * You will receive your credentials in an email and a sms message to the details provided in the onboarding form.
  * You will also receive the access token url, provided scopes, and the UAT endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@health.govt.nz).
5. The integration team team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
6. Each organisation using your application with HPI integrated services must apply individually for access to the production environment by completing the production form, please email [HPI queries](mailto:HI_Provider@health.govt.nz).

Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.

If you require help or have any questions regarding the onboarding process, please contact our team by completing a [General enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).


<h3>Business Functions</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>See below for available business functions. For more information on how these could be used in healthcare interactions <a href="guidance.html">See the use case guidance page</a> <br /> By using Te Whatu Ora APIs you are accessing personally identifiable information from the HPI which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prir to access to production. </caption>
<tr><th>Business Functions</th>
<th>Description</th>
<th>Comments</th></tr>

<tr><td>Get Facility</td>
<td>Get Facility using hpi-facility-id</td>
<td>Returns a location resource <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="getLocation.html">See Get Facility use case</a></td></tr>

<tr><td>Search Facility</td>
<td>Search Facilities by name, address, type and other parameters</td>
<td>Returns a bundle containing location resources <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="searchLocation.html">See Search Facility use case</a></td></tr>

<tr><td>Get Organisation</td>
<td>Get Organisation using hpi-organisation-id</td>
<td>Returns an Organization resource <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="getOrganization.html">See Get Organisation use case</a></td></tr>

<tr><td>Search Organisation</td>
<td>Search Organisation by name, type and other parameters</td>
<td>Returns a bundle containing Organisation resources <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="searchOrganization.html">See Search Organisation use case</a></td></tr>

<tr><td>Get Practitioner</td>
<td>Get Practitioner using CPN or RA-id</td>
<td>Returns a Practitioner resource <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="getPractitioner.html">See Get Practitioner use case</a></td></tr>

<tr><td> Search Practitioner</td>
<td>Search Practitioner by name, date of birth and other demographics</td>
<td>Returns a bundle containing Practitioner resources <br /> 
<a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="searchPractitioner.html">See Search Practitioner use case</a></td></tr>

<tr><td>Maintain Practitioner </td>
<td>Update Practitioner records</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="updatePractitioner.html">See Update Practitioner use case</a></td></tr>

<tr><td>Create Practitioner</td>
<td>Create Practitioner records</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="createPractitioner.html">See Create Practitioner use case</a></td></tr>

<tr><td>Get PractitionerRole </td>
<td>Get PractitionerRole using hpi-practitionerrole-id</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="getPracRole.html">See Get PractitionerRole use case</a></td></tr>

<tr><td> Search PractitionerRole </td>
<td>Search PractitionerRole using Practitioner and other parameters</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="searchPracRole.html">See Search PractitionerRole use case</a></td></tr>

<tr><td>Maintain PractitionerRole </td>
<td>Update PractitionerRole records</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="updatePracRole.html">See Update PractitionerRole use case</a></td></tr>

<tr><td> Create PractitionerRole </td>
<td>Create PractitionerRole records</td>
<td><a href="Onboarding.html#to-the-production-environment">See who can access the production environment</a> <br />
<a href="createPracRole.html">See Create PractitionerRole use case</a></td></tr>
</table>
