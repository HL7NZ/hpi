
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface to the New Zealand HPI - Health Provider Index. It brings together all the artifacts that are necessary to understand and use the FHIR API. O

The HPI ([Health Provider Index](https://www.health.govt.nz/our-work/health-identity/health-provider-index)) is a national registry service that holds information about the providers of healthcare in New Zealand, including the organizations where they work and the facilities that they work from. The key entities that are supported are:

The Person - described by the FHIR [Practitioner](http://hl7.org/fhir/practitioner.html) resource. 
Facilities where healthcare is provided from. These are represented by [Location](http://hl7.org/fhir/location.html) resources.
Organizations such as DHB’s, PHO,s and primary care organizations ([Organization](http://hl7.org/fhir/organization.html))
In addition, there is support for registering where a Practitioner works, and in what role - the [PractitionerRole](http://hl7.org/fhir/practitionerrole.html) resource.

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
* **Terminology:** The ValueSets and CodeSystems defined by the guide. 
* **FAQ:** Frequently Asked Questions
* **Artifact Index:** A page with all artifacts (Logical Models, Profiles, Extensions, Terminology and others) defined in this guide. This page largely duplicates information in the Profiles and Extensions tab.
* **Support** Links to the FHIR spec and downloads. 

### Identifiers

This IG makes extensive use of identifiers - such as the Common Person Number (CPN). These
are defined in the [New Zealand Base IG](http://hl7.org.nz/fhir/ig/base/) on the identifiers tab there.

Note that these identifiers are correct as at the time of publishing the Base IG. When
new identifiers are added, they will be present in the [build version](http://build.fhir.org/ig/HL7NZ/nzbase/branches/master/index.html) of NZBase (that has not yet been approved for release)

### Logical Models

[Logical models](artifacts.html#structures-logical-models) are part of the design process, and represent the information in the profiles in an easy to understand format. For example extensions are displayed as simple elements, and there is less FHIR-specific detail such as slicing and fixed elements.

It is intended as a way for people who are not familiar with FHIR to understand profile content, and does **not** represent the 'on-the-wire' format delivered through the API. They do, however, have links to terminology resources.

### Security

Not addressed by this guide

