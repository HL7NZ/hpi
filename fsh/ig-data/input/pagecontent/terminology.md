### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>District Health Board HPI Organisation Identifer</td><td>District Health Board HPI Organisation Identifer</td><td><a href='ValueSet-dhb.html'>https://standards.digital.health.nz/fhir/ValueSet/dhb-code</a></td><td><div><a href='CodeSystem-dhb.html'>https://standards.digital.health.nz/ns/dhb-code</a></div></td></tr>
<tr><td width='20%'>Type of Payload in an Endpoint</td><td>Type of Payload in an Endpoint</td><td><a href='ValueSet-endpoint-payload-type.html'>https://standards.digital.health.nz/fhir/ValueSet/endpoint-payload-type-code</a></td><td><div><a href='CodeSystem-endpoint-payload-type.html'>https://standards.digital.health.nz/ns/endpoint-payload-type-code</a></div></td></tr>
<tr><td width='20%'>Use values for an Address</td><td>Use values for an Address</td><td><a href='ValueSet-hpi-address-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code</a></td><td><div><a href='http://hl7.org/fhir/valueset-address-use.html'>http://hl7.org/fhir/address-use</a></div></td></tr>
<tr><td width='20%'>Use values for a ContactPoint</td><td>Use values for a ContactPoint</td><td><a href='ValueSet-hpi-contactpoint-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code</a></td><td><div><a href='http://hl7.org/fhir/valueset-contact-point-use.html'>http://hl7.org/fhir/contact-point-use</a></div></td></tr>
<tr><td width='20%'>Use values for a HumanName</td><td>Use values for a HumanName</td><td><a href='ValueSet-hpi-humanname-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code</a></td><td><div><a href='http://hl7.org/fhir/valueset-name-use.html'>http://hl7.org/fhir/name-use</a></div></td></tr>
<tr><td width='20%'>Use values for an identifier</td><td>Use values for an identifier</td><td><a href='ValueSet-hpi-identifier-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code</a></td><td><div><a href='http://hl7.org/fhir/valueset-identifier-use.html'>http://hl7.org/fhir/identifier-use</a></div></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='ValueSet-hpi-practitionerrole-status-reason.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code</a></td><td><div><a href='CodeSystem-hpi-practitionerRole-status-reason.html'>https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code</a></div></td></tr>
<tr><td width='20%'>Location alias types</td><td>The set of alias types that apply to Locations</td><td><a href='ValueSet-location-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code</a></td><td><div><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/ns/alias-type-code</a></div></td></tr>
<tr><td width='20%'>Status of Location - is it still in use</td><td>Status of Location - is it still in use</td><td><a href='ValueSet-location-status.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-status-code</a></td><td><div><a href='http://hl7.org/fhir/valueset-location-status.html'>http://hl7.org/fhir/location-status</a></div></td></tr>
<tr><td width='20%'>Type of location</td><td>Type of Location</td><td><a href='ValueSet-location-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-type-code</a></td><td><div><a href='CodeSystem-location-type.html'>https://standards.digital.health.nz/ns/location-type-code</a></div></td></tr>
<tr><td width='20%'>Organization alias types</td><td>The set of alias types that apply to Organizations</td><td><a href='ValueSet-organization-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code</a></td><td><div><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/ns/alias-type-code</a></div></td></tr>
<tr><td width='20%'>Additional Authorisation for functions that a Practitioner can perform</td><td>A coded type for additional authorisations</td><td><a href='ValueSet-practitioner-additional-authorization.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code</a></td><td><div><a href='CodeSystem-practitioner-additional-authorization.html'>https://standards.digital.health.nz/ns/practitioner-additional-authorization-code</a></div></td></tr>
<tr><td width='20%'>Professional registration the healthcare provider has</td><td>Professional registration the healthcare provider has</td><td><a href='ValueSet-practitioner-registration-authority.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code</a></td><td><div><a href='CodeSystem-practitioner-registration-authority.html'>https://standards.digital.health.nz/ns/practitioner-registration-authority-code</a></div></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</td><td><a href='ValueSet-practitioner-registration-status-code.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code</a></td><td><div><a href='CodeSystem-practitioner-registration-status-code.html'>https://standards.digital.health.nz/ns/practitioner-registration-status-code</a></div><div><a href='CodeSystem-practitioner-registration-status-code.html'>https://standards.digital.health.nz/ns/practitioner-registration-status-code</a></div></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A coded type for professional scope of practice.</td><td><a href='ValueSet-practitioner-scope-of-practice.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code</a></td><td><div><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code</a></div></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='ValueSet-practitionerrole-codes.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code</a></td><td><div><a href='CodeSystem-practitionerrole-codes.html'>https://standards.digital.health.nz/ns/practitioner-role-code</a></div></td></tr>
</table>
<br/><br/>
<h3>ValueSet by path</h3>
<table class='table table-bordered table-condensed'>
<tr><th>Path</th><th>ValueSet</th><th>Notes</th></tr>
<tr>
<td>Endpoint.payloadType</td>
<td><a href='ValueSet-endpoint-payload-type.html'>https://standards.digital.health.nz/fhir/ValueSet/endpoint-payload-type-code</a></td>
<td></td>
</tr>
<tr>
<td>Location.status</td>
<td><a href='ValueSet-location-status.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-status-code</a></td>
<td></td>
</tr>
<tr>
<td>Location.alias.extension.valueCodeableConcept</td>
<td><a href='ValueSet-location-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code</a></td>
<td></td>
</tr>
<tr>
<td>Location.type</td>
<td><a href='ValueSet-location-type.html'>https://standards.digital.health.nz/fhir/ValueSet/location-type-code</a></td>
<td></td>
</tr>
<tr>
<td>Location.telecom.use</td>
<td><a href='ValueSet-hpi-contactpoint-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Location.address.use</td>
<td><a href='ValueSet-hpi-address-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Organization.alias.extension.valueCodeableConcept</td>
<td><a href='ValueSet-organization-alias-type.html'>https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code</a></td>
<td></td>
</tr>
<tr>
<td>Organization.telecom.use</td>
<td><a href='ValueSet-hpi-contactpoint-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Practitioner.identifier.system</td>
<td><a href='ValueSet-hpi-identifier-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Practitioner.name.use</td>
<td><a href='ValueSet-hpi-humanname-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Practitioner.qualification.code</td>
<td><a href='ValueSet-practitioner-registration-authority.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code</a></td>
<td></td>
</tr>
<tr>
<td>PractitionerRole.identifier.system</td>
<td><a href='ValueSet-hpi-identifier-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code</a></td>
<td></td>
</tr>
<tr>
<td>PractitionerRole.code</td>
<td><a href='ValueSet-practitionerrole-codes.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code</a></td>
<td></td>
</tr>
<tr>
<td>PractitionerRole.telecom.use</td>
<td><a href='ValueSet-hpi-contactpoint-use.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.extension.valueCodeableConcept</td>
<td><a href='ValueSet-practitioner-additional-authorization.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.valueCodeableConcept</td>
<td><a href='ValueSet-dhb.html'>https://standards.digital.health.nz/fhir/ValueSet/dhb-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.extension.valueCodeableConcept</td>
<td><a href='ValueSet-hpi-practitionerrole-status-reason.html'>https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.extension.valueCodeableConcept</td>
<td><a href='ValueSet-practitioner-registration-status-code.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code</a></td>
<td></td>
</tr>
<tr>
<td>Extension.extension.valueCodeableConcept</td>
<td><a href='ValueSet-practitioner-scope-of-practice.html'>https://standards.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code</a></td>
<td></td>
</tr>
</table>
<br/><br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>Type of Alias</td><td>Used in Organization and Location to indicate what is the type of Alias</td><td><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/ns/alias-type-code</a></td></tr>
<tr><td width='20%'>District Health Board Code</td><td>District Health Board Code</td><td><a href='CodeSystem-dhb.html'>https://standards.digital.health.nz/ns/dhb-code</a></td></tr>
<tr><td width='20%'>Type of Payload in an Endpoint</td><td>Type of Payload in an Endpoint</td><td><a href='CodeSystem-endpoint-payload-type.html'>https://standards.digital.health.nz/ns/endpoint-payload-type-code</a></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='CodeSystem-hpi-practitionerRole-status-reason.html'>https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code</a></td></tr>
<tr><td width='20%'>Type of Location</td><td>Type of Location</td><td><a href='CodeSystem-location-type.html'>https://standards.digital.health.nz/ns/location-type-code</a></td></tr>
<tr><td width='20%'>Additional Authorisation</td><td>Additional authorisations that a practitioner is authorised to practice or prescribe.</td><td><a href='CodeSystem-practitioner-additional-authorization.html'>https://standards.digital.health.nz/ns/practitioner-additional-authorization-code</a></td></tr>
<tr><td width='20%'>Professional registration the healthcare provider has</td><td>Professional registration the healthcare provider has</td><td><a href='CodeSystem-practitioner-registration-authority.html'>https://standards.digital.health.nz/ns/practitioner-registration-authority-code</a></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA.</td><td><a href='CodeSystem-practitioner-registration-status-code.html'>https://standards.digital.health.nz/ns/practitioner-registration-status-code</a></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='CodeSystem-practitionerrole-codes.html'>https://standards.digital.health.nz/ns/practitioner-role-code</a></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A classification of the type or range of health services that a practitioner is authorised to provide, as determined by the Responsible Authority or other statutory authority (e.g. PHARMAC), that is, what the practitioner can or cannot do. It includes Scope of Practice as defined by the Health Practitioners Competence Assurance Act 2003, any special authorisations granted, and any conditions or limitations imposed by the Responsible Authority.</td><td><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code</a></td></tr>