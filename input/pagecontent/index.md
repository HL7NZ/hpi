
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface to the New Zealand HPI - Health Provider Index. It brings together all the artifacts that are necessary to understand and use the FHIR API.
It is based on  [FHIR R4](http://hl7.org/fhir/) and NZBase IG 2.0-rc1

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


  ### Source

  ​	This IG was built from [github](https://github.com/HL7NZ/nhi)  branch: _BRANCH_  commit id: _GIT_COMMIT_ID_

