### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Location alias types</td><td>The set of alias types that apply to Locations</td><td><a href='ValueSet-location-alias-type.html'>http://hl7.org.nz/fhir/ValueSet/location-alias-type</a></td><td><div><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/cs/alias-type</a></div></td></tr>
<tr><td width='20%'>Type of location</td><td>Type of Location</td><td><a href='ValueSet-location-type.html'>http://hl7.org.nz/fhir/ValueSet/location-type</a></td><td><div><a href='CodeSystem-location-type.html'>https://standards.digital.health.nz/cs/location-type</a></div></td></tr>
<tr><td width='20%'>Organization alias types</td><td>The set of alias types that apply to Organizations</td><td><a href='ValueSet-organization-alias-type.html'>http://hl7.org.nz/fhir/ValueSet/organization-alias-type</a></td><td><div><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/cs/alias-type</a></div></td></tr>
<tr><td width='20%'>Additional Authorisation for functions that a Practitioner can perform</td><td>A coded type for additional authorisations</td><td><a href='ValueSet-practitioner-additional-authorization.html'>http://hl7.org.nz/fhir/ValueSet/practitioner-additional-authorisation</a></td><td><div><a href='CodeSystem-practitioner-additional-authorization.html'>https://standards.digital.health.nz/cs/practitioner-additional-authorization</a></div></td></tr>
<tr><td width='20%'>Registration Authority</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='ValueSet-practitioner-registration-authority.html'>http://hl7.org.nz/fhir/ValueSet/practitioner-registration-authority</a></td><td><div><a href='CodeSystem-practitioner-registration-authority.html'>https://standards.digital.health.nz/cs/practitioner-registration-authority</a></div></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source.</td><td><a href='ValueSet-practitioner-registration-status.html'>http://hl7.org.nz/fhir/ValueSet/practitioner-registration-status</a></td><td><div><a href='CodeSystem-practitioner-registration-status.html'>https://standards.digital.health.nz/cs/practitioner-registration-status</a></div></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A coded type for professional scope of practice.</td><td><a href='ValueSet-practitioner-scope-of-practice.html'>http://hl7.org.nz/fhir/ValueSet/practitioner-scope-of-practice</a></td><td><div><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/cs/practitioner-scope-of-practice</a></div></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='ValueSet-practitionerRole-status-reason.html'>http://hl7.org.nz/fhir/ValueSet/practitionerrole-status-reason</a></td><td><div><a href='CodeSystem-practitionerRole-status-reason.html'>https://standards.digital.health.nz/cs/practitionerrole-status-reason</a></div></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='ValueSet-practitionerrole-codes.html'>http://hl7.org.nz/fhir/ValueSet/practitionerrole-codes</a></td><td><div><a href='CodeSystem-practitionerrole-codes.html'>https://standards.digital.health.nz/cs/practitionerrole-codes</a></div></td></tr>
</table>
<br/></br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>Type of Alias</td><td>Used in Organization and Location to indicate what is the type of Alias</td><td><a href='CodeSystem-alias-type.html'>https://standards.digital.health.nz/cs/alias-type</a></td></tr>
<tr><td width='20%'>Type of Location</td><td>Type of Location</td><td><a href='CodeSystem-location-type.html'>https://standards.digital.health.nz/cs/location-type</a></td></tr>
<tr><td width='20%'>Additional Authorisation</td><td>Additional authorisations that a practitioner is authorised to practice or prescribe.</td><td><a href='CodeSystem-practitioner-additional-authorization.html'>https://standards.digital.health.nz/cs/practitioner-additional-authorization</a></td></tr>
<tr><td width='20%'>Registration Authority</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='CodeSystem-practitioner-registration-authority.html'>https://standards.digital.health.nz/cs/practitioner-registration-authority</a></td></tr>
<tr><td width='20%'>Registration Status of Practitioners</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source.</td><td><a href='CodeSystem-practitioner-registration-status.html'>https://standards.digital.health.nz/cs/practitioner-registration-status</a></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='CodeSystem-practitionerRole-status-reason.html'>https://standards.digital.health.nz/cs/practitionerrole-status-reason</a></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that can be in a PractitionerRole</td><td><a href='CodeSystem-practitionerrole-codes.html'>https://standards.digital.health.nz/cs/practitionerrole-codes</a></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A classification of the type or range of health services that a practitioner is authorised to provide, as determined by the Responsible Authority or other statutory authority (e.g. PHARMAC), that is, what the practitioner can or cannot do. It includes Scope of Practice as defined by the Health Practitioners Competence Assurance Act 2003, any special authorisations granted, and any conditions or limitations imposed by the Responsible Authority.</td><td><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/cs/practitioner-scope-of-practice</a></td></tr>