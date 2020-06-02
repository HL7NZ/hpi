### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Type of location</td><td>Services delivered at the location</td><td><a href='ValueSet-LocationType.html'>http://hl7.org.nz/fhir/ValueSet/locationType</a></td><td><div><a href='CodeSystem-locationType.html'>https://standards.digital.health.nz/cs/locationType</a></div></td></tr>
<tr><td width='20%'>Registration Authority</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='ValueSet-RegistrationAuthority.html'>http://hl7.org.nz/fhir/ValueSet/registration-authority</a></td><td><div><a href='CodeSystem-RegistrationAuthority.html'>https://standards.digital.health.nz/cs/registration-authority</a></div></td></tr>
<tr><td width='20%'>HPI Additional Authorisation</td><td>A coded type for additional authorisations</td><td><a href='ValueSet-additionalAuthorization.html'>http://hl7.org.nz/fhir/ValueSet/hpi-additional-authorisation</a></td><td><div><a href='CodeSystem-additionalAuthorization.html'>https://standards.digital.health.nz/cs/hpi-additional-authorisation</a></div></td></tr>
<tr><td width='20%'>Location aliases</td><td>The set of alias types that apply to Locations</td><td><a href='ValueSet-locationAlias.html'>http://hl7.org.nz/fhir/ValueSet/Location-aliasType</a></td><td><div><a href='CodeSystem-aliasType.html'>https://standards.digital.health.nz/cs/aliasType</a></div></td></tr>
<tr><td width='20%'>Organization aliases</td><td>The set of alias types that apply to Organizations</td><td><a href='ValueSet-organizationAlias.html'>http://hl7.org.nz/fhir/ValueSet/Organization-aliasType</a></td><td><div><a href='CodeSystem-aliasType.html'>https://standards.digital.health.nz/cs/aliasType</a></div></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='ValueSet-practitionerRole-statusReason.html'>http://hl7.org.nz/fhir/ValueSet/PractitionerRole-statusReason</a></td><td><div><a href='CodeSystem-practitionerRole-statusReason.html'>https://standards.digital.health.nz/cs/PractitionerRole-statusReason</a></div></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that cam be in a PractitionerRole</td><td><a href='ValueSet-practitionerRoleCodes.html'>http://hl7.org.nz/fhir/ValueSet/practitionerRoleCodes</a></td><td><div><a href='undefined'>https://standards.digital.health.nz/cs/practitionerRoleCodes</a></div></td></tr>
<tr><td width='20%'>Qualification code</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='ValueSet-qualificationCode.html'>http://hl7.org.nz/fhir/ValueSet/qualificationCode</a></td><td><div><a href='CodeSystem-qualificationCode.html'>https://standards.digital.health.nz/cs/qualificationCode</a></div></td></tr>
<tr><td width='20%'>HPI Registration Status</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source.</td><td><a href='ValueSet-registrationStatus.html'>http://hl7.org.nz/fhir/ValueSet/hpi-registration-status</a></td><td><div><a href='CodeSystem-registrationStatus.html'>https://standards.digital.health.nz/cs/hpi-registration-status</a></div></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A coded type for professional scope of practice.</td><td><a href='ValueSet-scopeOfPractice.html'>http://hl7.org.nz/fhir/ValueSet/hpi-scope-of-practice</a></td><td><div><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/cs/hpi-scope-of-practice</a></div></td></tr>
</table>
<br></br>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>ValueSet Url</th></tr>
<tr><td width='20%'>Registration Authority</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='CodeSystem-RegistrationAuthority.html'>https://standards.digital.health.nz/cs/registration-authority</a></td></tr>
<tr><td width='20%'>HPI Additional Authorisation</td><td>Additional authorisations that a practitioner is authorised to practice or prescribe.</td><td><a href='CodeSystem-additionalAuthorization.html'>https://standards.digital.health.nz/cs/hpi-additional-authorisation</a></td></tr>
<tr><td width='20%'>Type of Alias</td><td>Used in Organization and Location to indicate what is the type of Alias</td><td><a href='CodeSystem-aliasType.html'>https://standards.digital.health.nz/cs/aliasType</a></td></tr>
<tr><td width='20%'>Type of Location</td><td>Services delivered at the location</td><td><a href='CodeSystem-locationType.html'>https://standards.digital.health.nz/cs/locationType</a></td></tr>
<tr><td width='20%'>PractitonerRole status reason</td><td>The reason for the current status of PractitionerRole</td><td><a href='CodeSystem-practitionerRole-statusReason.html'>https://standards.digital.health.nz/cs/PractitionerRole-statusReason</a></td></tr>
<tr><td width='20%'>PractitionerRoleCodes</td><td>Coded roles that cam be in a PractitionerRole</td><td><a href='CodeSystem-practitionerRoleCodes.html'>https://standards.digital.health.nz/cs/PractitionerRoleCodes</a></td></tr>
<tr><td width='20%'>Qualification code</td><td>The coded form of the qualification - eg medical or Nursing council identifier</td><td><a href='CodeSystem-qualificationCode.html'>https://standards.digital.health.nz/cs/qualificationCode</a></td></tr>
<tr><td width='20%'>HPI Registration Status</td><td>The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source.</td><td><a href='CodeSystem-registrationStatus.html'>https://standards.digital.health.nz/cs/hpi-registration-status</a></td></tr>
<tr><td width='20%'>Scope of practice</td><td>A classification of the type or range of health services that a practitioner is authorised to provide, as determined by the Responsible Authority or other statutory authority (e.g. PHARMAC), that is, what the practitioner can or cannot do. It includes Scope of Practice as defined by the Health Practitioners Competence Assurance Act 2003, any special authorisations granted, and any conditions or limitations imposed by the Responsible Authority.</td><td><a href='CodeSystem-scopeOfPractice.html'>https://standards.digital.health.nz/cs/hpi-scope-of-practice</a></td></tr>