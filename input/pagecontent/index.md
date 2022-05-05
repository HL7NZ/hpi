
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface to the New Zealand HPI - Health Provider Index. It brings together all the artifacts that are necessary to understand and use the FHIR API.
It is based on  [FHIR R4](http://hl7.org/fhir/R4.0.1/) and [NZBase IG v1.0.0.](https://fhir.org.nz/ig/base/history.html)

The HPI ([Health Provider Index](https://www.health.govt.nz/our-work/health-identity/health-provider-index)) is a national registry service that holds information about the providers of healthcare in New Zealand, including the organizations where they work and the facilities that they work from.

The key entities that are supported are:

The Person - described by the FHIR [HPIPractitioner](StructureDefinition-HPIPractitioner.html) resource.

Facilities where healthcare is provided from. These are represented by [HPILocation](StructureDefinition-HpiLocation.html) resource.

Organizations such as DHB’s, PHO,s and primary care organizations. These are represented by the [HPIOrganization](StructureDefinition-HpiOrganization.html) resource.

In addition, there is support for registering where a Practitioner works, and in what role - the [HPIPractitionerRole](StructureDefinition-HPIPractitionerRole.html) resource.

The HPI serves 2 primary purposes:

* A unique identifier for each individual or entity
* An authoritative source for the key information about that entity.


### Description of tabs

* **Business view:**  Business context of the HPI
* **Use Cases:**  Expected Use Cases that the HPI supports
* **General notes:**  Common notes about how the API and contents are organized
* **API:** The specific API features supported by the HPI.
* **Profiles:** A list of the profiles that are defined by the guide. 
* **Extensions:** A list of the extensions defined by the guide, and extensions that are defined elsewhere.
* **Terminology:** List of the FHIR terminology artifacts defined within this implementation guide For other FHIR terminology see the HL7® FHIR® New Zealand Base Implementation Guide. Links can be found from each of the artifacts in the patient and address profiles).
* **FAQ:** Frequently Asked Questions
* **Artifact Index:** A page with all artifacts (Logical Models, Profiles, Extensions, Terminology and others) defined in this guide. This page largely duplicates information in the Profiles and Extensions tab.
* **Support** Links to the FHIR spec and downloads. 

### Identifiers

This IG makes extensive use of identifiers - such as the HPI Person ID (CPN). These
are defined in the [New Zealand Base IG](https://fhir.org.nz/ig/base/namingSystems.html) on the identifiers tab there.

Note that these identifiers are correct as at the time of publishing the Base IG. When
new identifiers are added, they will be present in the [build version](http://build.fhir.org/ig/HL7NZ/nzbase/branches/master/index.html) of NZBase (that has not yet been approved for release)

### Security

The HPI server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the [SMART  specification  for backend services]( https://build.fhir.org/ig/HL7/smart-app-launch/backend-services.html)

The following scopes are supported
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>

<tr><th>Scope</th>           <th>Description</th>                     |<th> </th>

<tr><td> `practitioner:read`   </td><td> Read access to all Practitioner resources. </td><td> </td></tr>
<tr><td> `practitioner:search` </td><td> Search access to Practitioner resources, Practitioners tagged as confidential are excluded from the results. </td></tr>
<tr><td>`practitioner:write`  </td><td> Write access to all Practitioner resources. </td><td>
<tr><td> `practitioner:admin`  </td><td> Admin access to all Practitioner resources. </td><td><b>Allows access to confidential data.</b> </td></tr>
<tr><td>`location:read`       </td><td> Read access to all Location resources.  </td><td> </td></tr>
<tr><td>`location:search`     </td><td>Search access to all Location resources  </td><td> </td></tr>
<tr><td> `location:write`      </td><td> Write access to all Location resources. </td><td> </td></tr>
<tr><td>`location:admin`      </td><td> Admin access to all Location resources.</td><td> <b>Allows access to confidential data.</b> </td></tr>
<tr><td>`organization:read`   </td><td> Read access to all Organization resources. </td><td> </td></tr>
<tr><td> `organization:search` </td><td> Search access to all Organization resources </td><td> </td></tr>
<tr><td>`organization:write`  </td><td> Write access to all Organization resources. </td><td> </td></tr>
<tr><td>`organization:admin`  </td><td> Admin access to all Organization resources.</td><td> <b>Allows access to confidential data.</b> </td></tr>
<tr><td> `pracrole:read`       </td><td> Read access to all Practitioner Role resources.</td><td> </td></tr>
<tr><td>`pracrole:search`     </td><td> Search access to all active Practitioner Role resources, inactive roles are excluded from the results. </td><td> </td></tr>
<tr><td>`pracrole:write`      </td><td> Write access to all Practitioner Role resources.</td><td> </td></tr>
<tr><td> `pracrole:admin`      </td><td> Admin access to all Practitioner Role resources.</td><td> <b>Allows access to confidential data.</b></td></tr>
</table>