### ValueSets

These are ValueSets that have been defined in this guide for coded elements. 

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it. 
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure 
to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR.


<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Canonical url</th></tr>
<tr><td width='20%'>Additional Authorisation for functions that a Practitioner can perform</td><td>A coded type for additional authorisations</td><td><a href='ValueSet-practitioner-additional-authorization.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code</a></td></tr>
<tr><td width='20%'>Location alias types</td><td>The set of alias types that apply to Locations</td><td><a href='ValueSet-location-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code</a></td></tr>
<tr><td width='20%'>Organization alias types</td><td>The set of alias types that apply to Organizations</td><td><a href='ValueSet-organization-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code</a></td></tr>
<tr><td width='20%'>PractitionerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='ValueSet-hpi-practitionerrole-status-reason.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code</a></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='ValueSet-practitionerrole-codes.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code</a></td></tr>
<tr><td width='20%'>Professional registration the healthcare provider has</td><td>Professional registration the healthcare provider has</td><td><a href='ValueSet-practitioner-registration-authority.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code</a></td></tr>
<tr><td width='20%'>Status of Location - is it still in use</td><td>Status of Location - is it still in use</td><td><a href='ValueSet-location-status.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-status-code</a></td></tr>
<tr><td width='20%'>Type of location</td><td>Type of Location</td><td><a href='ValueSet-location-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-type-code</a></td></tr>
<tr><td width='20%'>Use values for a ContactPoint</td><td>Use values for a ContactPoint</td><td><a href='ValueSet-hpi-contactpoint-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code</a></td></tr>
<tr><td width='20%'>Use values for a HumanName</td><td>Use values for a HumanName</td><td><a href='ValueSet-hpi-humanname-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code</a></td></tr>
<tr><td width='20%'>Use values for an Address</td><td>Use values for an Address</td><td><a href='ValueSet-hpi-address-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code</a></td></tr>
<tr><td width='20%'>Use values for an identifier</td><td>Use values for an identifier</td><td><a href='ValueSet-hpi-identifier-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code</a></td></tr>
</table>
<br/><br/>
### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>Canonical Url</th></tr>
<tr><td width='20%'>Type of Alias</td><td>Used in Organization and Location to indicate what is the type of Alias</td><td><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/ns/alias-type-code</a></td></tr>
<tr><td width='20%'>PractitionerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='CodeSystem-hpi-practitionerRole-status-reason.html'>https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code</a></td></tr>
<tr><td width='20%'>Type of Location</td><td>Type of Location</td><td><a href='CodeSystem-location-type.html'>https://standards.digital.health.nz/ns/location-type-code</a></td></tr>
<tr><td width='20%'>Additional Authorisation</td><td>Additional authorisations that a practitioner is authorised to practice or prescribe.</td><td><a href='CodeSystem-practitioner-additional-authorization.html'>https://standards.digital.health.nz/ns/practitioner-additional-authorization-code</a></td></tr>
<tr><td width='20%'>Professional registration the healthcare provider has</td><td>Professional registration the healthcare provider has</td><td><a href='CodeSystem-practitioner-registration-authority.html'>https://standards.digital.health.nz/ns/practitioner-registration-authority-code</a></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='CodeSystem-practitionerrole-codes.html'>https://standards.digital.health.nz/ns/practitioner-role-code</a></td></tr>
</table>