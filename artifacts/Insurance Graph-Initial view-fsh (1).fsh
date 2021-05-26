// Automatically generated from graphBuilder.
// Project: Insurance Graph (id1619037949466)
// View: Initial view

Instance: cfsb1619037965212
InstanceOf: Patient
Description: "Patient1"
Usage: #example
 

Instance: cfsb1619038011351
InstanceOf: Coverage
Description: "Coverage1"
Usage: #example
 
// Reference to Patient: Patient1
* beneficiary = Reference(cfsb1619037965212)
// Reference to Organization: Payor
* payor = Reference(cfsb1619038052077)
// Reference to RelatedPerson: Subscriber
* policyHolder = Reference(cfsb1619038210308)


* class.type = http://terminology.hl7.org/CodeSystem/coverage-class#plan

* class.type.text = "plan"

* class.value = "123abc"

* status = #active

Instance: cfsb1619038052077
InstanceOf: Organization
Description: "Payor"
Usage: #example
 

Instance: cfsb1619038084272
InstanceOf: Organization
Description: "Rx Claims Processor"
Usage: #example
 

Instance: cfsb1619038115484
InstanceOf: OrganizationAffiliation
Description: "Rx Claims Affiliation"
Usage: #example
 
// Reference to Organization: Payor
* organization = Reference(cfsb1619038052077)
// Reference to Organization: Rx Claims Processor
* participatingOrganization = Reference(cfsb1619038084272)

Instance: cfsb1619038210308
InstanceOf: RelatedPerson
Description: "Subscriber"
Usage: #example
 
// Reference to Patient: Patient1
* patient = Reference(cfsb1619037965212)

Instance: cfsb1619038365939
InstanceOf: InsurancePlan
Description: "InsurancePlan1"
Usage: #example
 
* identifier.value = "123abc"

Instance: cfsb1619039354536
InstanceOf: Patient
Description: "Veteran"
Usage: #example
 

Instance: cfsb1619039387290
InstanceOf: Linkage
Description: "Link"
Usage: #example
 


* item.type = #source
// Reference to Patient: Veteran
* item.resource = Reference(cfsb1619039354536)



* item[1].type = #alternate
// Reference to RelatedPerson: Subscriber
* item[1].resource = Reference(cfsb1619038210308)



Instance: cfsb1619206796357
InstanceOf: CoverageEligibilityResponse
Description: "EligibilityResponse"
Usage: #example
 
* status = #active
* purpose = #validation
// Reference to Patient: Patient1
* patient = Reference(cfsb1619037965212)
* created = "2021-04-24"
// Reference to CoverageEligibilityRequest: EligibilityRequest
* request = Reference(cfsb1619529809123)
* outcome = #complete 
// Reference to Organization: Payor
* insurer = Reference(cfsb1619038052077)
// Reference to Coverage: Coverage1
* insurance.coverage = Reference(cfsb1619038011351)



Instance: cfsb1619529809123
InstanceOf: CoverageEligibilityRequest
Description: "EligibilityRequest"
Usage: #example

* identifier.value = "98765"
* status = #active
* purpose = #validation
* patient = Reference(cfsb1619037965212)
* created = "2021-04-24"
* insurer = Reference(cfsb1619038052077)
 

