Profile:        HpiEndpoint
Parent:         Endpoint
Id:             HpiEndpoint
Title:          "HPI Endpoint"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

//unsupported elements

* name 0..0
* managingOrganization 0..0
* contact 0..0
* period 0..0
* payloadMimeType 0..0
* header 0..0


* identifier 1..1

//Create our own set of payload types
* payloadType from https://standards.digital.health.nz/fhir/ValueSet/endpoint-payload-type-code


CodeSystem:  EndpointPayloadType
Id: endpoint-payload-type
Title: "Type of Payload in an Endpoint"
Description:  "Type of Payload in an Endpoint"

* ^url = "https://standards.digital.health.nz/ns/endpoint-payload-type-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #v2 "HL7 V2 message" "General type for an HL7 V2 message"


ValueSet: EndpointPayloadType
Id: endpoint-payload-type
Title: "Type of Payload in an Endpoint"
Description:  "Type of Payload in an Endpoint"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/endpoint-payload-type-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system https://standards.digital.health.nz/ns/endpoint-payload-type-code



