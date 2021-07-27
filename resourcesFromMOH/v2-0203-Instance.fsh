Instance: v2-0203
InstanceOf: $shareablecodesystem
Usage: #definition
* language = #en
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Identifier Type</p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Description</b></td><td><b>Comment</b></td><td><b>Version</b></td></tr><tr><td>AC\n            <a name=\"AC\"/></td><td>Accreditation/Certification Identifier</td><td/><td>added v2.9</td></tr><tr><td>ACSN\n            <a name=\"ACSN\"/></td><td>Accession ID</td><td>Accession Identifier</td><td>added v2.7</td></tr><tr><td>AM\n            <a name=\"AM\"/></td><td>American Express</td><td>Deprecated and replaced by BC in v 2.5.</td><td>added v2.3</td></tr><tr><td>AMA\n            <a name=\"AMA\"/></td><td>American Medical Association Number</td><td>A physician identifier assigned by the AMA.</td><td>added v2.6</td></tr><tr><td>AN\n            <a name=\"AN\"/></td><td>Account number</td><td>An identifier that is unique to an account.</td><td>added v2.3</td></tr><tr><td>ANC\n            <a name=\"ANC\"/></td><td>Account number Creditor</td><td>Class: Financial\r\nA more precise definition of an account number: sometimes two distinct account numbers must be transmitted in the same message, one as the creditor, the other as the debitor.\r\nKreditorenkontonummer</td><td>added v2.5</td></tr><tr><td>AND\n            <a name=\"AND\"/></td><td>Account number debitor</td><td>Class: Financial\r\nA more precise definition of an account number: sometimes two distinct account numbers must be transmitted in the same message, one as the creditor, the other as the debitor.\r\nDebitorenkontonummer</td><td>added v2.5</td></tr><tr><td>ANON\n            <a name=\"ANON\"/></td><td>Anonymous identifier</td><td>An identifier for a living subject whose real identity is protected or suppressed\r\nJustification: For public health reporting purposes, anonymous identifiers are occasionally used for protecting patient identity in reporting certain results. For instance, a state health department may choose to use a scheme for generating an anonymous identifier for reporting a patient that has had a positive human immunodeficiency virus antibody test. Anonymous identifiers can be used in PID 3 by replacing the medical record number or other non-anonymous identifier. The assigning authority for an anonymous identifier would be the state/local health department.</td><td>added v2.5</td></tr><tr><td>ANT\n            <a name=\"ANT\"/></td><td>Temporary Account Number</td><td>Class: Financial\r\nTemporary version of an Account Number.\r\nUse Case: An ancillary system that does not normally assign account numbers is the first time to register a patient. This ancillary system will generate a temporary account number that will only be used until an official account number is assigned.</td><td>added v2.5</td></tr><tr><td>APRN\n            <a name=\"APRN\"/></td><td>Advanced Practice Registered Nurse number</td><td>An identifier that is unique to an advanced practice registered nurse within the jurisdiction of a certifying board</td><td>added v2.5</td></tr><tr><td>ASID\n            <a name=\"ASID\"/></td><td>Ancestor Specimen ID</td><td>A unique identifier for the ancestor specimen. All child, grandchild, etc. specimens of the ancestor specimen share the same Ancestor Specimen ID.</td><td>added v2.7</td></tr><tr><td>BA\n            <a name=\"BA\"/></td><td>Bank Account Number</td><td>Class: Financial</td><td>added v2.4</td></tr><tr><td>BC\n            <a name=\"BC\"/></td><td>Bank Card Number</td><td>Class: Financial\r\nAn identifier that is unique to a person's bank card. Replaces AM, DI, DS, MS, and VS beginning in v 2.5.</td><td>added v2.5</td></tr><tr><td>BCFN\n            <a name=\"BCFN\"/></td><td>Birth Certificate File Number</td><td/><td>added v2.9</td></tr><tr><td>BCT\n            <a name=\"BCT\"/></td><td>Birth Certificate</td><td>A number associated with a document identifying the event of a person's birth.</td><td>added v2.6</td></tr><tr><td>BR\n            <a name=\"BR\"/></td><td>Birth registry number</td><td>An identifier unique within the Assigning Authority that is the official legal record of a person's birth.</td><td>added v2.3</td></tr><tr><td>BRN\n            <a name=\"BRN\"/></td><td>Breed Registry Number</td><td/><td>added v2.4</td></tr><tr><td>BSNR\n            <a name=\"BSNR\"/></td><td>Primary physician office number</td><td>Betriebsstättennummer - for use in the German realm.</td><td>added v2.7</td></tr><tr><td>CC\n            <a name=\"CC\"/></td><td>Cost Center number</td><td>Class: Financial\r\nUse Case: needed especially for transmitting information about invoices.</td><td>added v2.5</td></tr><tr><td>CONM\n            <a name=\"CONM\"/></td><td>Change of Name Document</td><td>A number associated with a document identifying a person's legal change of name.</td><td>added v2.6</td></tr><tr><td>CY\n            <a name=\"CY\"/></td><td>County number</td><td/><td>added v2.5</td></tr><tr><td>CZ\n            <a name=\"CZ\"/></td><td>Citizenship Card</td><td>A number assigned by a person's country of residence to identify a person's citizenship.</td><td>added v2.6</td></tr><tr><td>DC\n            <a name=\"DC\"/></td><td>Death Certificate ID</td><td/><td>added v2.9</td></tr><tr><td>DCFN\n            <a name=\"DCFN\"/></td><td>Death Certificate File Number</td><td/><td>added v2.9</td></tr><tr><td>DDS\n            <a name=\"DDS\"/></td><td>Dentist license number</td><td>An identifier that is unique to a dentist within the jurisdiction of the licensing board</td><td>added v2.5</td></tr><tr><td>DEA\n            <a name=\"DEA\"/></td><td>Drug Enforcement Administration registration number</td><td>An identifier for an individual or organization relative to controlled substance regulation and transactions.\r\nUse case: This is a registration number that identifies an individual or organization relative to controlled substance regulation and transactions. \r\nA DEA number has a very precise and widely accepted meaning within the United States. Surprisingly, the US Drug Enforcement Administration does not solely assign DEA numbers in the United States. Hospitals have the authority to issue DEA numbers to their medical residents. These DEA numbers are based upon the hospital’s DEA number, but the authority rests with the hospital on the assignment to the residents. Thus, DEA as an Identifier Type is necessary in addition to DEA as an Assigning Authority.</td><td>added v2.5</td></tr><tr><td>DFN\n            <a name=\"DFN\"/></td><td>Drug Furnishing or prescriptive authority Number</td><td>An identifier issued to a health care provider authorizing the person to write drug orders\r\nUse Case: A nurse practitioner has authorization to furnish or prescribe pharmaceutical substances; this identifier is in component 1.</td><td>added v2.5</td></tr><tr><td>DI\n            <a name=\"DI\"/></td><td>Diner's Club card</td><td>Deprecated and replaced by BC in v 2.5.</td><td>added v2.3</td></tr><tr><td>DL\n            <a name=\"DL\"/></td><td>Driver's license number</td><td/><td>added v2.3</td></tr><tr><td>DN\n            <a name=\"DN\"/></td><td>Doctor number</td><td/><td>added v2.3</td></tr><tr><td>DO\n            <a name=\"DO\"/></td><td>Osteopathic License number</td><td>An identifier that is unique to an osteopath within the jurisdiction of a licensing board.</td><td>added v2.5</td></tr><tr><td>DP\n            <a name=\"DP\"/></td><td>Diplomatic Passport</td><td>A number assigned to a diplomatic passport.</td><td>added v2.6</td></tr><tr><td>DPM\n            <a name=\"DPM\"/></td><td>Podiatrist license number</td><td>An identifier that is unique to a podiatrist within the jurisdiction of the licensing board.</td><td>added v2.5</td></tr><tr><td>DR\n            <a name=\"DR\"/></td><td>Donor Registration Number</td><td/><td>added v2.4</td></tr><tr><td>DS\n            <a name=\"DS\"/></td><td>Discover Card</td><td>Deprecated and replaced by BC in v 2.5.</td><td>added v2.3</td></tr><tr><td>EI\n            <a name=\"EI\"/></td><td>Employee number</td><td>A number that uniquely identifies an employee to an employer.</td><td>added v2.3</td></tr><tr><td>EN\n            <a name=\"EN\"/></td><td>Employer number</td><td/><td>added v2.3</td></tr><tr><td>ESN\n            <a name=\"ESN\"/></td><td>Staff Enterprise Number</td><td>An identifier that is unique to a staff member within an enterprise (as identified by the Assigning Authority).</td><td>added v2.6</td></tr><tr><td>FDR\n            <a name=\"FDR\"/></td><td>Fetal Death Report ID</td><td/><td>added v2.9</td></tr><tr><td>FDRFN\n            <a name=\"FDRFN\"/></td><td>Fetal Death Report File Number</td><td/><td>added v2.9</td></tr><tr><td>FI\n            <a name=\"FI\"/></td><td>Facility ID</td><td/><td>added v2.3.1</td></tr><tr><td>FILL\n            <a name=\"FILL\"/></td><td>Filler Identifier</td><td/><td>added v2.9</td></tr><tr><td>GI\n            <a name=\"GI\"/></td><td>Guarantor internal identifier</td><td>Class: Financial</td><td>added v2.3</td></tr><tr><td>GL\n            <a name=\"GL\"/></td><td>General ledger number</td><td>Class: Financial</td><td>added v2.5</td></tr><tr><td>GN\n            <a name=\"GN\"/></td><td>Guarantor external  identifier</td><td>Class: Financial</td><td>added v2.3</td></tr><tr><td>HC\n            <a name=\"HC\"/></td><td>Health Card Number</td><td/><td>added v2.4</td></tr><tr><td>IND\n            <a name=\"IND\"/></td><td>Indigenous/Aboriginal</td><td>A number assigned to a member of an indigenous or aboriginal group outside of Canada.</td><td>added v2.5</td></tr><tr><td>JHN\n            <a name=\"JHN\"/></td><td>Jurisdictional health number (Canada)</td><td>Class: Insurance\r\n2 uses: a) UK jurisdictional CHI number; b) Canadian provincial health card number:</td><td>added v2.4</td></tr><tr><td>LACSN\n            <a name=\"LACSN\"/></td><td>Laboratory Accession ID</td><td>A laboratory accession id is used in the laboratory domain. The concept of accession is used in other domains such as radiology, so the LACSN is used to distinguish a lab accession id from an radiology accession id</td><td>added v2.7</td></tr><tr><td>LANR\n            <a name=\"LANR\"/></td><td>Lifelong physician number</td><td>Lebenslange Arztnummer - for use in German realm.</td><td>added v2.7</td></tr><tr><td>LI\n            <a name=\"LI\"/></td><td>Labor and industries number</td><td/><td>added v2.5</td></tr><tr><td>LN\n            <a name=\"LN\"/></td><td>License number</td><td/><td>added v2.3.1</td></tr><tr><td>LR\n            <a name=\"LR\"/></td><td>Local Registry ID</td><td/><td>added v2.3.1</td></tr><tr><td>MA\n            <a name=\"MA\"/></td><td>Patient Medicaid number</td><td>Class: Insurance</td><td>added v2.3</td></tr><tr><td>MB\n            <a name=\"MB\"/></td><td>Member Number</td><td>An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier.\r\nUse Case: Person is covered by an insurance policy. This person may or may not be the subscriber of the policy.</td><td>added v2.5</td></tr><tr><td>MC\n            <a name=\"MC\"/></td><td>Patient's Medicare number</td><td>Class: Insurance</td><td>added v2.3</td></tr><tr><td>MCD\n            <a name=\"MCD\"/></td><td>Practitioner Medicaid number</td><td>Class: Insurance</td><td>added v2.5</td></tr><tr><td>MCN\n            <a name=\"MCN\"/></td><td>Microchip Number</td><td/><td>added v2.4</td></tr><tr><td>MCR\n            <a name=\"MCR\"/></td><td>Practitioner Medicare number</td><td>Class: Insurance</td><td>added v2.5</td></tr><tr><td>MCT\n            <a name=\"MCT\"/></td><td>Marriage Certificate</td><td>A number associated with a document identifying the event of a person's marriage.</td><td>added v2.6</td></tr><tr><td>MD\n            <a name=\"MD\"/></td><td>Medical License number</td><td>An identifier that is unique to a medical doctor within the jurisdiction of a licensing board.\r\nUse Case: These license numbers are sometimes used as identifiers. In some states, the same authority issues all three identifiers, e.g., medical, osteopathic, and physician assistant licenses all issued by one state medical board. For this case, the CX data type requires distinct identifier types to accurately interpret component 1. Additionally, the distinction among these license types is critical in most health care settings (this is not to convey full licensing information, which requires a segment to support all related attributes).</td><td>added v2.5</td></tr><tr><td>MI\n            <a name=\"MI\"/></td><td>Military ID number</td><td>A number assigned to an individual who has had military duty, but is not currently on active duty. The number is assigned by the DOD or Veterans' Affairs (VA).</td><td>added v2.5</td></tr><tr><td>MR\n            <a name=\"MR\"/></td><td>Medical record number</td><td>An identifier that is unique to a patient within a set of medical records, not necessarily unique within an application.</td><td>added v2.3</td></tr><tr><td>MRT\n            <a name=\"MRT\"/></td><td>Temporary Medical Record Number</td><td>Temporary version of a Medical Record Number\r\nUse Case: An ancillary system that does not normally assign medical record numbers is the first time to register a patient. This ancillary system will generate a temporary medical record number that will only be used until an official medical record number is assigned.</td><td>added v2.5</td></tr><tr><td>MS\n            <a name=\"MS\"/></td><td>MasterCard</td><td>Deprecated and replaced by BC in v 2.5.</td><td>added v2.3</td></tr><tr><td>NBSNR\n            <a name=\"NBSNR\"/></td><td>Secondary physician office number</td><td>Nebenbetriebsstättennummer - for use in the German realm.</td><td>added v2.7</td></tr><tr><td>NCT\n            <a name=\"NCT\"/></td><td>Naturalization Certificate</td><td>A number associated with a document identifying a person's retention of citizenship in a particular country.</td><td>added v2.6</td></tr><tr><td>NE\n            <a name=\"NE\"/></td><td>National employer identifier</td><td>In the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions.</td><td>added v2.3.1</td></tr><tr><td>NH\n            <a name=\"NH\"/></td><td>National Health Plan Identifier</td><td>Class: Insurance\r\nUsed for the UK NHS national identifier.\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions.</td><td>added v2.3.1</td></tr><tr><td>NI\n            <a name=\"NI\"/></td><td>National unique individual identifier</td><td>Class: Insurance\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions.</td><td>added v2.3.1</td></tr><tr><td>NII\n            <a name=\"NII\"/></td><td>National Insurance Organization Identifier</td><td>Class: Insurance\r\nIn Germany a national identifier for an insurance company. It is printed on the insurance card (health card). It is not to be confused with the health card number itself.\r\nKrankenkassen-ID der KV-Karte</td><td>added v2.5</td></tr><tr><td>NIIP\n            <a name=\"NIIP\"/></td><td>National Insurance Payor Identifier (Payor)</td><td>Class: Insurance\r\nIn Germany the insurance identifier addressed as the payor.\r\nKrankenkassen-ID des Rechnungsempfängers\r\nUse case: a subdivision issues the card with their identifier, but the main division is going to pay the invoices.</td><td>added v2.5</td></tr><tr><td>NNxxx\n            <a name=\"NNxxx\"/></td><td>National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code</td><td/><td>added v2.3.1</td></tr><tr><td>NP\n            <a name=\"NP\"/></td><td>Nurse practitioner number</td><td>An identifier that is unique to a nurse practitioner within the jurisdiction of a certifying board.</td><td>added v2.5</td></tr><tr><td>NPI\n            <a name=\"NPI\"/></td><td>National provider identifier</td><td>Class: Insurance\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions.</td><td>added v2.3.1</td></tr><tr><td>OBI\n            <a name=\"OBI\"/></td><td>Observation Instance Identifier</td><td/><td>added v2.9</td></tr><tr><td>OD\n            <a name=\"OD\"/></td><td>Optometrist license number</td><td>A number that is unique to an individual optometrist within the jurisdiction of the licensing board.</td><td>added v2.5</td></tr><tr><td>PA\n            <a name=\"PA\"/></td><td>Physician Assistant number</td><td>An identifier that is unique to a physician assistant within the jurisdiction of a licensing board</td><td>added v2.5</td></tr><tr><td>PC\n            <a name=\"PC\"/></td><td>Parole Card</td><td>A number identifying a person on parole.</td><td>added v2.6</td></tr><tr><td>PCN\n            <a name=\"PCN\"/></td><td>Penitentiary/correctional institution Number</td><td>A number assigned to individual who is incarcerated.</td><td>added v2.5</td></tr><tr><td>PE\n            <a name=\"PE\"/></td><td>Living Subject Enterprise Number</td><td>An identifier that is unique to a living subject within an enterprise (as identified by the Assigning Authority).</td><td>added v2.5</td></tr><tr><td>PEN\n            <a name=\"PEN\"/></td><td>Pension Number</td><td/><td>added v2.4</td></tr><tr><td>PHC\n            <a name=\"PHC\"/></td><td>Public Health Case Identifier</td><td/><td>added v2.9</td></tr><tr><td>PHE\n            <a name=\"PHE\"/></td><td>Public Health Event Identifier</td><td/><td>added v2.9</td></tr><tr><td>PHO\n            <a name=\"PHO\"/></td><td>Public Health Official ID</td><td/><td>added v2.9</td></tr><tr><td>PI\n            <a name=\"PI\"/></td><td>Patient internal identifier</td><td>A number that is unique to a patient within an Assigning Authority.</td><td>added v2.3</td></tr><tr><td>PLAC\n            <a name=\"PLAC\"/></td><td>Placer Identifier</td><td/><td>added v2.9</td></tr><tr><td>PN\n            <a name=\"PN\"/></td><td>Person number</td><td>A number that is unique to a living subject within an Assigning Authority.</td><td>added v2.3.1</td></tr><tr><td>PNT\n            <a name=\"PNT\"/></td><td>Temporary Living Subject Number</td><td>Temporary version of a Lining Subject Number.</td><td>added v2.5</td></tr><tr><td>PPIN\n            <a name=\"PPIN\"/></td><td>Medicare/CMS Performing Provider Identification Number</td><td>Class:  Insurance</td><td>added v2.6</td></tr><tr><td>PPN\n            <a name=\"PPN\"/></td><td>Passport number</td><td>A unique number assigned to the document affirming that a person is a citizen of the country. In the US this number is issued only by the State Department.</td><td>added v2.5</td></tr><tr><td>PRC\n            <a name=\"PRC\"/></td><td>Permanent Resident Card Number</td><td/><td>added v2.5</td></tr><tr><td>PRN\n            <a name=\"PRN\"/></td><td>Provider number</td><td>A number that is unique to an individual provider, a provider group or an organization within an Assigning Authority.\r\nUse case: This allows PRN to represent either an individual (a nurse) or a group/organization (orthopedic surgery team).</td><td>added v2.3.1</td></tr><tr><td>PT\n            <a name=\"PT\"/></td><td>Patient external identifier</td><td/><td>added v2.3</td></tr><tr><td>QA\n            <a name=\"QA\"/></td><td>QA number</td><td/><td>added v2.5</td></tr><tr><td>RI\n            <a name=\"RI\"/></td><td>Resource identifier</td><td>A generalized resource identifier.\r\nUse Case: An identifier type is needed to accommodate what are commonly known as resources. The resources can include human (e.g. a respiratory therapist), non-human (e.g., a companion animal), inanimate object (e.g., an exam room), organization (e.g., diabetic education class) or any other physical or logical entity.</td><td>added v2.5</td></tr><tr><td>RN\n            <a name=\"RN\"/></td><td>Registered Nurse Number</td><td>An identifier that is unique to a registered nurse within the jurisdiction of the licensing board.</td><td>added v2.5</td></tr><tr><td>RPH\n            <a name=\"RPH\"/></td><td>Pharmacist license number</td><td>An identifier that is unique to a pharmacist within the jurisdiction of the licensing board.</td><td>added v2.5</td></tr><tr><td>RR\n            <a name=\"RR\"/></td><td>Railroad Retirement number</td><td>An identifier for an individual enrolled with the Railroad Retirement Administration.  Analogous to, but distinct from, a Social Security Number</td><td>added v2.3</td></tr><tr><td>RRI\n            <a name=\"RRI\"/></td><td>Regional registry ID</td><td/><td>added v2.3.1</td></tr><tr><td>RRP\n            <a name=\"RRP\"/></td><td>Railroad Retirement Provider</td><td>Class:  Insurance</td><td>added v2.6</td></tr><tr><td>SB\n            <a name=\"SB\"/></td><td>Social Beneficiary Identifier</td><td/><td>added v2.9</td></tr><tr><td>SID\n            <a name=\"SID\"/></td><td>Specimen ID</td><td>Identifier for a specimen. Used when it is not known if the specimen ID is a unique specimen ID (USID) or an ancestor ID (ASID).</td><td>added v2.7</td></tr><tr><td>SL\n            <a name=\"SL\"/></td><td>State license</td><td/><td>added v2.3.1</td></tr><tr><td>SN\n            <a name=\"SN\"/></td><td>Subscriber Number</td><td>Class: Insurance\r\nAn identifier for a subscriber of an insurance policy which is unique for, and usually assigned by, the insurance carrier.\r\nUse Case: A person is the subscriber of an insurance policy. The person’s family may be plan members, but are not the subscriber.</td><td>added v2.5</td></tr><tr><td>SNBSN\n            <a name=\"SNBSN\"/></td><td>State assigned NDBS card Identifier</td><td/><td>added v2.9</td></tr><tr><td>SNO\n            <a name=\"SNO\"/></td><td>Serial Number</td><td/><td>added v2.9</td></tr><tr><td>SP\n            <a name=\"SP\"/></td><td>Study Permit</td><td>A number associated with a permit identifying a person who is a resident of a jurisdiction for the purpose of education.</td><td>added v2.6</td></tr><tr><td>SR\n            <a name=\"SR\"/></td><td>State registry ID</td><td/><td>added v2.3.1</td></tr><tr><td>SS\n            <a name=\"SS\"/></td><td>Social Security number</td><td/><td>added v2.3</td></tr><tr><td>STN\n            <a name=\"STN\"/></td><td>Shipment Tracking Number</td><td/><td>added v2.9</td></tr><tr><td>TAX\n            <a name=\"TAX\"/></td><td>Tax ID number</td><td/><td>added v2.5</td></tr><tr><td>TN\n            <a name=\"TN\"/></td><td>Treaty Number/ (Canada)</td><td>A number assigned to a member of an indigenous group in Canada.\r\nUse Case: First Nation.</td><td>added v2.5</td></tr><tr><td>TPR\n            <a name=\"TPR\"/></td><td>Temporary Permanent Resident (Canada)</td><td>A number associated with a document identifying a person's temporary permanent resident status.</td><td>added v2.6</td></tr><tr><td>TRL\n            <a name=\"TRL\"/></td><td>Training License Number</td><td/><td>added v2.9</td></tr><tr><td>U\n            <a name=\"U\"/></td><td>Unspecified identifier</td><td/><td>added v2.3.1</td></tr><tr><td>UDI\n            <a name=\"UDI\"/></td><td>Universal Device Identifier</td><td/><td>added v2.9</td></tr><tr><td>UPIN\n            <a name=\"UPIN\"/></td><td>Medicare/CMS (formerly HCFA)'s Universal Physician Identification numbers</td><td>Class: Insurance\r\nAn identifier for a provider within the CMS/Medicare program.  A globally unique identifier for the provider in the Medicare program.</td><td>added v2.3.1</td></tr><tr><td>USID\n            <a name=\"USID\"/></td><td>Unique Specimen ID</td><td>A unique identifier for a specimen.</td><td>added v2.7</td></tr><tr><td>VN\n            <a name=\"VN\"/></td><td>Visit number</td><td/><td>added v2.3</td></tr><tr><td>VP\n            <a name=\"VP\"/></td><td>Visitor Permit</td><td>A number associated with a document identifying a person as a visitor of a jurisdiction or country.</td><td>added v2.6</td></tr><tr><td>VS\n            <a name=\"VS\"/></td><td>VISA</td><td>Deprecated and replaced by BC in v 2.5.</td><td>added v2.3</td></tr><tr><td>WC\n            <a name=\"WC\"/></td><td>WIC identifier</td><td/><td>added v2.3.1</td></tr><tr><td>WCN\n            <a name=\"WCN\"/></td><td>Workers' Comp Number</td><td/><td>added v2.4</td></tr><tr><td>WP\n            <a name=\"WP\"/></td><td>Work Permit</td><td>A number associated with a permit for a person who is granted permission to work in a country for a specified time period.</td><td>added v2.6</td></tr><tr><td>XV\n            <a name=\"XV\"/></td><td>Health Plan Identifier</td><td/><td>added v2.9</td></tr><tr><td>XX\n            <a name=\"XX\"/></td><td>Organization identifier</td><td/><td>added v2.3</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #normative
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 5
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension[=].valueCode = #fhir
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[=].valueCode = #4.0.0
* url = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.18.108"
* version = "2.9"
* name = "v2.0203"
* title = "v2 Identifier Type"
* status = #active
* experimental = false
* publisher = "HL7, Inc"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org"
* description = "FHIR Value set/code system definition for HL7 v2 table 0203 ( Identifier Type)"
* content = #complete
* concept[0].code = #AC
* concept[=].display = "Accreditation/Certification Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Accession identificatie"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Accession Identifier"
* concept[=].code = #ACSN
* concept[=].display = "Accession ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Accession ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Vervangen door BC vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Deprecated and replaced by BC in v 2.5."
* concept[=].code = #AM
* concept[=].display = "American Express"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "American Express"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "American Express"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een zorgverleneridentificatie toegekend door de AMA"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A physician identifier assigned by the AMA."
* concept[=].code = #AMA
* concept[=].display = "American Medical Association Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "American Medical Association nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een unieke identificatie van het account"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to an account."
* concept[=].code = #AN
* concept[=].display = "Account number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Kontonummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Accountnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel. Een preciesere definitie van een accountnummer: soms moeten 2 verschillende accountnummers moeten worden doorgegeven in hetzelfde bericht, een als crediteur, de andere als debiteur. Crediteuraccountnummer."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial\r\nA more precise definition of an account number: sometimes two distinct account numbers must be transmitted in the same message, one as the creditor, the other as the debitor.\r\nKreditorenkontonummer"
* concept[=].code = #ANC
* concept[=].display = "Account number Creditor"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Accountnummer crediteur"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel. Een preciesere definitie van een accountnummer: soms moeten 2 verschillende accountnummers moeten worden doorgegeven in hetzelfde bericht, een als crediteur, de andere als debiteur. Debiteuraccountnummer."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial\r\nA more precise definition of an account number: sometimes two distinct account numbers must be transmitted in the same message, one as the creditor, the other as the debitor.\r\nDebitorenkontonummer"
* concept[=].code = #AND
* concept[=].display = "Account number debitor"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Accountnummer debiteur"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Verklaring: t.b.v. volksgezondheid-doeleinden worden anonieme identificaties soms gebruikt voor bescherming van de identiteit van de patiënt bij melden van bepaalde resultaten. Zo kan een gezondheidsafdeling van een overheid voor een algoritme voor het genereren van nummers kiezen bij patiënten met een positieve HIV-antilichamentest. Anonieme identificaties kunnen worden gebruikt in PID-3 door het medisch dossiernummer of ander niet-anonieme identificatie te vervangen. De toekennende autoriteit voor de anonieme identificatie is dan de betreffende overheidsafdeling."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier for a living subject whose real identity is protected or suppressed\r\nJustification: For public health reporting purposes, anonymous identifiers are occasionally used for protecting patient identity in reporting certain results. For instance, a state health department may choose to use a scheme for generating an anonymous identifier for reporting a patient that has had a positive human immunodeficiency virus antibody test. Anonymous identifiers can be used in PID 3 by replacing the medical record number or other non-anonymous identifier. The assigning authority for an anonymous identifier would be the state/local health department."
* concept[=].code = #ANON
* concept[=].display = "Anonymous identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Anonieme identificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel. Tijdelijke versie van een accountnummer. Use case: een satellietsysteem dat normaal geen accountnummers toekent, is de eerste plaats waar een patiënt wordt geregistreerd. Dit satellietsysteem zal een tijdelijk accountnummer genereren dat wordt gebruikt totdat een officieel accountnummer wordt toegekend."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial\r\nTemporary version of an Account Number.\r\nUse Case: An ancillary system that does not normally assign account numbers is the first time to register a patient. This ancillary system will generate a temporary account number that will only be used until an official account number is assigned."
* concept[=].code = #ANT
* concept[=].display = "Temporary Account Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Tijdelijk accountnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString = "An identifier that is unique to an advanced practice registered nurse within the jurisdiction of a certifying board"
* concept[=].code = #APRN
* concept[=].display = "Advanced Practice Registered Nurse number"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een unieke identificatie voor het oorspronkelijke monster. Alle afgeleide (kind, kleinkind, etc.) monsters van het oorspronkelijke monster delen hetzelfde Oorspronkelijke monster ID"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A unique identifier for the ancestor specimen. All child, grandchild, etc. specimens of the ancestor specimen share the same Ancestor Specimen ID."
* concept[=].code = #ASID
* concept[=].display = "Ancestor Specimen ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Oorspronkelijk monster ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial"
* concept[=].code = #BA
* concept[=].display = "Bank Account Number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Bank Kontonummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Bankrekeningnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel. Een identificatie die uniek is voor iemand's bankpas. Vervangt AM, DI, DS, MS en VS vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial\r\nAn identifier that is unique to a person's bank card. Replaces AM, DI, DS, MS, and VS beginning in v 2.5."
* concept[=].code = #BC
* concept[=].display = "Bank Card Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Bankrekeningnummer"
* concept[+].code = #BCFN
* concept[=].display = "Birth Certificate File Number"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een nummer gekoppeld aan een document die de geboorte van een persoon documenteert."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying the event of a person's birth."
* concept[=].code = #BCT
* concept[=].display = "Birth Certificate"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Geboortecertificaat"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een nummer gekoppeld aan de toekennende autoriteit die het officieel wettelijk afschrift van de geboorte van een persoon bijhoudt."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier unique within the Assigning Authority that is the official legal record of a person's birth."
* concept[=].code = #BR
* concept[=].display = "Birth registry number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Geburtsregisternummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Geboorteregister-nummer"
* concept[+].code = #BRN
* concept[=].display = "Breed Registry Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Dierenras-registernummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Betriebsstättennummer - voor gebruik in Duitse context."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Betriebsstättennummer - for use in the German realm."
* concept[=].code = #BSNR
* concept[=].display = "Primary physician office number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Primair zorgverlenerpraktijknummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel. Use case: specifiek nodig voor doorgeven van informatie over facturen."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial\r\nUse Case: needed especially for transmitting information about invoices."
* concept[=].code = #CC
* concept[=].display = "Cost Center number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Kostenplaatsnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een document met daarop de officiële wijziging van persoonsnaam."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying a person's legal change of name."
* concept[=].code = #CONM
* concept[=].display = "Change of Name Document"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Naamswijzigingdocument"
* concept[+].code = #CY
* concept[=].display = "County number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "County-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan het land van inwonerschap van een persoon om iemand staatsburgerschap aan te duiden."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned by a person's country of residence to identify a person's citizenship."
* concept[=].code = #CZ
* concept[=].display = "Citizenship Card"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Staatsburgerschapkaart"
* concept[+].code = #DC
* concept[=].display = "Death Certificate ID"
* concept[+].code = #DCFN
* concept[=].display = "Death Certificate File Number"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een tandarts binnen het rechtsgebied van de licentiegever."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a dentist within the jurisdiction of the licensing board"
* concept[=].code = #DDS
* concept[=].display = "Dentist license number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Tandarts licentienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: dit is een registratienummer die een persoon of organisatie aanduidt, gerelateerd aan gereguleerde substantie-wetgeving en transacties."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier for an individual or organization relative to controlled substance regulation and transactions.\r\nUse case: This is a registration number that identifies an individual or organization relative to controlled substance regulation and transactions. \r\nA DEA number has a very precise and widely accepted meaning within the United States. Surprisingly, the US Drug Enforcement Administration does not solely assign DEA numbers in the United States. Hospitals have the authority to issue DEA numbers to their medical residents. These DEA numbers are based upon the hospital’s DEA number, but the authority rests with the hospital on the assignment to the residents. Thus, DEA as an Identifier Type is necessary in addition to DEA as an Assigning Authority."
* concept[=].code = #DEA
* concept[=].display = "Drug Enforcement Administration registration number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Amerikaanse Drug Enforcement Administration registratienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie uitgegeven aan een zorgverlener die de persoon autoriseert om medicatie voor te schrijven. Use case: een nurse practitioner heeft toestemming om farmaceutische substanties te verstrekken of voor te schrijven; deze identificatie staat in component 1."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier issued to a health care provider authorizing the person to write drug orders\r\nUse Case: A nurse practitioner has authorization to furnish or prescribe pharmaceutical substances; this identifier is in component 1."
* concept[=].code = #DFN
* concept[=].display = "Drug Furnishing or prescriptive authority Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medicatieverstrekker of voorschrijver autoriteitnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Vervangen door BC vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Deprecated and replaced by BC in v 2.5."
* concept[=].code = #DI
* concept[=].display = "Diner's Club card"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Diners Club"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Diner's Club"
* concept[+].code = #DL
* concept[=].display = "Driver's license number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Führerscheinnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Rijbewijsnummer"
* concept[+].code = #DN
* concept[=].display = "Doctor number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Arztnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Artsnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een osteopaat binnen het rechtsgebied van de licentiegever."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to an osteopath within the jurisdiction of a licensing board."
* concept[=].code = #DO
* concept[=].display = "Osteopathic License number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Osteopatisch licentienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie van een diplomatiek paspoort."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned to a diplomatic passport."
* concept[=].code = #DP
* concept[=].display = "Diplomatic Passport"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Diplomatiek paspoort"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een podoloog binnen het rechtsgebied van de licentiegever."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a podiatrist within the jurisdiction of the licensing board."
* concept[=].code = #DPM
* concept[=].display = "Podiatrist license number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Podoloog licentienummer"
* concept[+].code = #DR
* concept[=].display = "Donor Registration Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Donorregistratienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Vervangen door BC vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Deprecated and replaced by BC in v 2.5."
* concept[=].code = #DS
* concept[=].display = "Discover Card"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Discover Card"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Discover kaart"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een aanduiding die een werknemer uniek identificeert ten opzichte van een werkgever"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number that uniquely identifies an employee to an employer."
* concept[=].code = #EI
* concept[=].display = "Employee number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Arbeitnehmernummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Werknemernummer"
* concept[+].code = #EN
* concept[=].display = "Employer number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Arbeitgebernummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Werkgevernummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een aanduiding die een medewerker uniek identificeert binnen een bedrijf (zoals geïdentificeerd door de toekennende autoriteit)"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a staff member within an enterprise (as identified by the Assigning Authority)."
* concept[=].code = #ESN
* concept[=].display = "Staff Enterprise Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medewerker bedrijfsnummer"
* concept[+].code = #FDR
* concept[=].display = "Fetal Death Report ID"
* concept[+].code = #FDRFN
* concept[=].display = "Fetal Death Report File Number"
* concept[+].code = #FI
* concept[=].display = "Facility ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Afdeling-ID"
* concept[+].code = #FILL
* concept[=].display = "Filler Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial"
* concept[=].code = #GI
* concept[=].display = "Guarantor internal identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "interne ID des Zahlungspflichtigen"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Interne garantsteller identificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial"
* concept[=].code = #GL
* concept[=].display = "General ledger number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Grootboeknummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: financieel"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Financial"
* concept[=].code = #GN
* concept[=].display = "Guarantor external  identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "externe ID des Zahlungspflichtigen"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Externe garantsteller identificatie"
* concept[+].code = #HC
* concept[=].display = "Health Card Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Gezondheidskaartnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een nummer toegekend aan een lid van een inheemse of aboriginal groep buiten Canada."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned to a member of an indigenous or aboriginal group outside of Canada."
* concept[=].code = #IND
* concept[=].display = "Indigenous/Aboriginal"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Inheems/Aboriginal"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "2 use cases: a) CHI-nummer van rechtsgebied in Verenigd Koninkrijk; b) Canadees provinciaal gezondheidskaartnummer:"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\n2 uses: a) UK jurisdictional CHI number; b) Canadian provincial health card number:"
* concept[=].code = #JHN
* concept[=].display = "Jurisdictional health number (Canada)"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Rechtsgebied gezondheidsnummer (Canada)"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een laboratorium accessie ID wordt gebruikt in het laboratoriumdomein. Het concept accessie wordt ook in andere domeinen gebruikt zoals radiologie, dus de LACSN wordt gebruikt om onderscheid te maken tussen een lab accessie ID en een radiologie accessie ID."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A laboratory accession id is used in the laboratory domain. The concept of accession is used in other domains such as radiology, so the LACSN is used to distinguish a lab accession id from an radiology accession id"
* concept[=].code = #LACSN
* concept[=].display = "Laboratory Accession ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Laboratorium Accessie ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Lebenslange Artznummer - voor gebruik in Duitse context."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Lebenslange Arztnummer - for use in German realm."
* concept[=].code = #LANR
* concept[=].display = "Lifelong physician number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Levenslang zorgverlenernummer"
* concept[+].code = #LI
* concept[=].display = "Labor and industries number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Arbeid en industrienummer"
* concept[+].code = #LN
* concept[=].display = "License number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Licentienummer"
* concept[+].code = #LR
* concept[=].display = "Local Registry ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Lokaal register ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance"
* concept[=].code = #MA
* concept[=].display = "Patient Medicaid number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Armennummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Medicaid patiëntnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: persoon is gedekt door verzekeringspolis. Deze persoon is mogelijk tevens hoofdpolishouder."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier.\r\nUse Case: Person is covered by an insurance policy. This person may or may not be the subscriber of the policy."
* concept[=].code = #MB
* concept[=].display = "Member Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Lidnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance"
* concept[=].code = #MC
* concept[=].display = "Patient's Medicare number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Rentnernummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Medicare patiëntnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance"
* concept[=].code = #MCD
* concept[=].display = "Practitioner Medicaid number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medicaid zorgverlenernummer"
* concept[+].code = #MCN
* concept[=].display = "Microchip Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Microchip-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance"
* concept[=].code = #MCR
* concept[=].display = "Practitioner Medicare number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medicare zorgverlenernummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een document dat het huwelijk van een persoon aantoont."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying the event of a person's marriage."
* concept[=].code = #MCT
* concept[=].display = "Marriage Certificate"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Huwelijkscertificaat"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die unieke is voor een arts binnen het rechtsgebied van een licentiegever. Use case: deze licentienummers worden soms gebruikt ter identificatie. In sommige staten, geeft dezelfde autoriteit alle drie identificaties uit, bijv. medisch, osteopathisch, en arts-assistent licenties die alle worden uitgegeven door één overheidsinstantie. Voor dit geval vereist het CX datatype afzonderlijke identificatietypen om component 1 te kunnen interpreteren. Daarnaast is onderscheid tussen deze licentietypen essentieel in de meeste zorgsituaties (niet om volledige licentie-informatie door te geven, waarvoor een segment voor alle gerelateerde attributen nodig zou zijn)."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a medical doctor within the jurisdiction of a licensing board.\r\nUse Case: These license numbers are sometimes used as identifiers. In some states, the same authority issues all three identifiers, e.g., medical, osteopathic, and physician assistant licenses all issued by one state medical board. For this case, the CX data type requires distinct identifier types to accurately interpret component 1. Additionally, the distinction among these license types is critical in most health care settings (this is not to convey full licensing information, which requires a segment to support all related attributes)."
* concept[=].code = #MD
* concept[=].display = "Medical License number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Geneeskundig licentienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie toegekend aan een persoon die in militaire dienst is geweest, maar op dit moment niet in actieve dienst. Het nummer wordt toegekend door de Amerikaanse Department of Defense (DOD) of Veteran's Affairs (VA)."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned to an individual who has had military duty, but is not currently on active duty. The number is assigned by the DOD or Veterans' Affairs (VA)."
* concept[=].code = #MI
* concept[=].display = "Military ID number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Militaire identificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een patiënt binnen een set van medische dossiers, niet noodzakelijk uniek binnen een applicatie."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a patient within a set of medical records, not necessarily unique within an application."
* concept[=].code = #MR
* concept[=].display = "Medical record number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Krankenaktennummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Medisch dossiernummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: een satellietsysteem dat normaal geen medische dossiernummer toekent is het eerste systeem waar een patiënt wordt geregistreerd. Dit satellietsysteem geeft een tijdelijk medisch dossiernummer uit dat alleen wordt gebruikt totdat het officiële medisch dossiernummer wordt toegekend."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Temporary version of a Medical Record Number\r\nUse Case: An ancillary system that does not normally assign medical record numbers is the first time to register a patient. This ancillary system will generate a temporary medical record number that will only be used until an official medical record number is assigned."
* concept[=].code = #MRT
* concept[=].display = "Temporary Medical Record Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Tijdelijke medisch dossiernummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Vervangen door BC vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Deprecated and replaced by BC in v 2.5."
* concept[=].code = #MS
* concept[=].display = "MasterCard"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "MasterCard"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "MasterCard"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Nebenbetriebsstättennummer - voor gebruik in Duitse context."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Nebenbetriebsstättennummer - for use in the German realm."
* concept[=].code = #NBSNR
* concept[=].display = "Secondary physician office number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Secundaire zorgverlenerpraktijknummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een document dat het verwerven van staatburgerschap in een bepaald land aantoont."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying a person's retention of citizenship in a particular country."
* concept[=].code = #NCT
* concept[=].display = "Naturalization Certificate"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Naturalisatiecertificaat"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "In de VS is de toekennende autoriteit voor deze waarde meestal CMS, maar het kan worden gebruikt voor alle zorgaanbieders/zorverleners en verzekeraars in HIPAA gerelateerde transacties."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "In the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions."
* concept[=].code = #NE
* concept[=].display = "National employer identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nationale werkgeveridentificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Ten behoeve de NHS nationale identificatie in het Verenigd Koninkrijk"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nUsed for the UK NHS national identifier.\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions."
* concept[=].code = #NH
* concept[=].display = "National Health Plan Identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nationaal zorgverzekeringsnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "In de VS is de toekennende autoriteit voor deze waarde normalerwijs CMS, maar het kan door alle zorgaanbieders en verzekeraars worden gebruikt in HIPAA-gerelateerde transacties."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions."
* concept[=].code = #NI
* concept[=].display = "National unique individual identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nationale unieke identificatie persoon"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering. In Duitsland is dit een nationale identificatie voor een verzekeraar. Deze staat op de verzekeringskaart. De identificatie moet niet worden verward met het kaartnummer zelf. Krankenkassen-ID der KV-Karte"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nIn Germany a national identifier for an insurance company. It is printed on the insurance card (health card). It is not to be confused with the health card number itself.\r\nKrankenkassen-ID der KV-Karte"
* concept[=].code = #NII
* concept[=].display = "National Insurance Organization Identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Institutskennzeichen der Krankenkasse"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Nationale verzekeraar identificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering. In Duitsland is dit een nationale identificatie voor een betaler. Krankenkassen-ID des Rechnungsempfängers. Use case: een subdivisie geeft een kaart af met deze identificatie, maar de hoofddivisie betaalt de facturen."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nIn Germany the insurance identifier addressed as the payor.\r\nKrankenkassen-ID des Rechnungsempfängers\r\nUse case: a subdivision issues the card with their identifier, but the main division is going to pay the invoices."
* concept[=].code = #NIIP
* concept[=].display = "National Insurance Payor Identifier (Payor)"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Vertragskassennummer (VKNR)"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Nationale verzekeraar betaler identificatie (Betaler)"
* concept[+].code = #NNxxx
* concept[=].display = "National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nationale persoonsidentificatie waarbij xxx de ISO-tabel 3166 3-tekens (alfabetisch) landcode is"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een nurse practitioner binnen het rechtsgebied van een certificeringsinstantie"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a nurse practitioner within the jurisdiction of a certifying board."
* concept[=].code = #NP
* concept[=].display = "Nurse practitioner number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nurse practitioner nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering. UZI-nummer."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nIn the US, the Assigning Authority for this value is typically CMS, but it may be used by all providers and insurance companies in HIPAA related transactions."
* concept[=].code = #NPI
* concept[=].display = "National provider identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Nationale zorgaanbieder/zorgverlener identificatie"
* concept[+].code = #OBI
* concept[=].display = "Observation Instance Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een optometrist binnen het rechtsgebied van een certificeringsinstantie"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number that is unique to an individual optometrist within the jurisdiction of the licensing board."
* concept[=].code = #OD
* concept[=].display = "Optometrist license number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Optometrist nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een zorgverlener binnen het rechtsgebied van een certificeringsinstantie"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a physician assistant within the jurisdiction of a licensing board"
* concept[=].code = #PA
* concept[=].display = "Physician Assistant number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Assistenzarztnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Zorgverlener nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie van een persoon die subject is van reclassering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number identifying a person on parole."
* concept[=].code = #PC
* concept[=].display = "Parole Card"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Reclasseringskaart"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie toegekend aan een persoon die inbewaringgesteld/gevangengezet is"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned to individual who is incarcerated."
* concept[=].code = #PCN
* concept[=].display = "Penitentiary/correctional institution Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Penitentiaire instellings-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een levend wezen binnen een bedrijf (zoals geïdentificeerd door de toekennende autoriteit)."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a living subject within an enterprise (as identified by the Assigning Authority)."
* concept[=].code = #PE
* concept[=].display = "Living Subject Enterprise Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Levend wezen bedrijfs-nummer"
* concept[+].code = #PEN
* concept[=].display = "Pension Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Pensioennummer"
* concept[+].code = #PHC
* concept[=].display = "Public Health Case Identifier"
* concept[+].code = #PHE
* concept[=].display = "Public Health Event Identifier"
* concept[+].code = #PHO
* concept[=].display = "Public Health Official ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een patiënt binnen een toekennende autoriteit."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number that is unique to a patient within an Assigning Authority."
* concept[=].code = #PI
* concept[=].display = "Patient internal identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "interne Patienten-ID"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Intern patiëntnummer"
* concept[+].code = #PLAC
* concept[=].display = "Placer Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een levend wezen binnen een toekennende autoriteit."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number that is unique to a living subject within an Assigning Authority."
* concept[=].code = #PN
* concept[=].display = "Person number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Personen-ID"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Persoonsnummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Tijdelijke versie van een Levend wezen nummer"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Temporary version of a Lining Subject Number."
* concept[=].code = #PNT
* concept[=].display = "Temporary Living Subject Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Tijdelijk levend wezen nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class:  Insurance"
* concept[=].code = #PPIN
* concept[=].display = "Medicare/CMS Performing Provider Identification Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medicare/CMS Uitvoerende zorgaanbieder/zorgverlener identificatienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een wettig document dat bevestigt dat een persoon een staatsburger van het land is."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A unique number assigned to the document affirming that a person is a citizen of the country. In the US this number is issued only by the State Department."
* concept[=].code = #PPN
* concept[=].display = "Passport number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Passnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Paspoortnummer"
* concept[+].code = #PRC
* concept[=].display = "Permanent Resident Card Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Permanente verblijfsvergunning-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: hiermee wordt een persoon (zoals een verpleegkundige) of een groep/organisatie (orthopedisch chirurgisch team) aangeduid."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number that is unique to an individual provider, a provider group or an organization within an Assigning Authority.\r\nUse case: This allows PRN to represent either an individual (a nurse) or a group/organization (orthopedic surgery team)."
* concept[=].code = #PRN
* concept[=].display = "Provider number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Zorgaanbieder/zorgverlener-nummer"
* concept[+].code = #PT
* concept[=].display = "Patient external identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "externe Patienten-ID"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Extern patiëntnummer"
* concept[+].code = #QA
* concept[=].display = "QA number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Quality Assurance-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: een identificatietype is nodig voor wat algemeen 'resources' heten. Hieronder vallen menselijke resources (bijv. een respiratoir therapeut), niet-menselijke resources (bijv., een begeleidend dier), niet-levende entiteiten (bijv. een onderzoeksruimte), organisaties (bijv. diabetesonderwijsklas) of andere fysieke of logische entiteiten."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A generalized resource identifier.\r\nUse Case: An identifier type is needed to accommodate what are commonly known as resources. The resources can include human (e.g. a respiratory therapist), non-human (e.g., a companion animal), inanimate object (e.g., an exam room), organization (e.g., diabetic education class) or any other physical or logical entity."
* concept[=].code = #RI
* concept[=].display = "Resource identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Resource identicatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een geregistreerde verpleegkundige binnen het rechtsgebied van een licenserende instantie."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a registered nurse within the jurisdiction of the licensing board."
* concept[=].code = #RN
* concept[=].display = "Registered Nurse Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Verpleegkundige registratienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een apotheek binnen het rechtsgebied van een licenserende instantie."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier that is unique to a pharmacist within the jurisdiction of the licensing board."
* concept[=].code = #RPH
* concept[=].display = "Pharmacist license number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Apotheek licentienummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een persoon binnen de Railroad Retirement Administration. Aanaloog aan, maar anders dan een SOFI-nummer."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "An identifier for an individual enrolled with the Railroad Retirement Administration.  Analogous to, but distinct from, a Social Security Number"
* concept[=].code = #RR
* concept[=].display = "Railroad Retirement number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Seniorenkartennummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Spoorwegen pensioneringsnummer"
* concept[+].code = #RRI
* concept[=].display = "Regional registry ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Regionaal register-ID"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class:  Insurance"
* concept[=].code = #RRP
* concept[=].display = "Railroad Retirement Provider"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Spoorwegen pensioenaanbieder"
* concept[+].code = #SB
* concept[=].display = "Social Beneficiary Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een monster. Gebruikt wanneer onbekend is of het monsternummer een Uniek monsternummer (USID) of een Oorspronkelijk monsternummer (ASID) is."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Identifier for a specimen. Used when it is not known if the specimen ID is a unique specimen ID (USID) or an ancestor ID (ASID)."
* concept[=].code = #SID
* concept[=].display = "Specimen ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Monsternummer"
* concept[+].code = #SL
* concept[=].display = "State license"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Staat-licentie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie voor een hoofdverzekerde onder een verzekeringspolis die uniek is voor, en normaal wordt toegekend door, een verzekeraar."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nAn identifier for a subscriber of an insurance policy which is unique for, and usually assigned by, the insurance carrier.\r\nUse Case: A person is the subscriber of an insurance policy. The person’s family may be plan members, but are not the subscriber."
* concept[=].code = #SN
* concept[=].display = "Subscriber Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Hoofdverzekerdenummer"
* concept[+].code = #SNBSN
* concept[=].display = "State assigned NDBS card Identifier"
* concept[+].code = #SNO
* concept[=].display = "Serial Number"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een visum voor een persoon die inwoner van rechtsgebied is ten behoeve van een opleiding."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a permit identifying a person who is a resident of a jurisdiction for the purpose of education."
* concept[=].code = #SP
* concept[=].display = "Study Permit"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Opleidingsvisum"
* concept[+].code = #SR
* concept[=].display = "State registry ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Staat register-ID"
* concept[+].code = #SS
* concept[=].display = "Social Security number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Sozialversicherungsnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "SOFI-nummer"
* concept[+].code = #STN
* concept[=].display = "Shipment Tracking Number"
* concept[+].code = #TAX
* concept[=].display = "Tax ID number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Steueridentifikationsnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Belasting identificatie"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Use case: First Nation."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number assigned to a member of an indigenous group in Canada.\r\nUse Case: First Nation."
* concept[=].code = #TN
* concept[=].display = "Treaty Number/ (Canada)"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Verdragnummer/ (Canada)"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie die uniek is voor een apotheek binnen het rechtsgebied van een licenserende instantie."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying a person's temporary permanent resident status."
* concept[=].code = #TPR
* concept[=].display = "Temporary Permanent Resident (Canada)"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Tijdelijk permanente inwoner (Canada)"
* concept[+].code = #TRL
* concept[=].display = "Training License Number"
* concept[+].code = #U
* concept[=].display = "Unspecified identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Niet-gspecificeerde identificatie"
* concept[+].code = #UDI
* concept[=].display = "Universal Device Identifier"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Klasse: verzekering. Een identificatie van een zorgverlener/zorgaanbieder binnen het CMS/Medicare programma. Een wereldwij unieke identificatie voor de zorgverlener/zorgaanbieder in het Medicare programma."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Class: Insurance\r\nAn identifier for a provider within the CMS/Medicare program.  A globally unique identifier for the provider in the Medicare program."
* concept[=].code = #UPIN
* concept[=].display = "Medicare/CMS (formerly HCFA)'s Universal Physician Identification numbers"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Medicare/HCFA's Universele Zorgverlener Identificatie Nummers"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een unieke identificatie voor een monster."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A unique identifier for a specimen."
* concept[=].code = #USID
* concept[=].display = "Unique Specimen ID"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Uniek monsternummer"
* concept[+].code = #VN
* concept[=].display = "Visit number"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Fallnummer"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Bezoeknummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een visum voor een persoon als toerist in een bepaald rechtsgebied of land."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a document identifying a person as a visitor of a jurisdiction or country."
* concept[=].code = #VP
* concept[=].display = "Visitor Permit"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Besucherkennung"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Toeristenvisum"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Vervangen door BC vanaf v2.5"
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "Deprecated and replaced by BC in v 2.5."
* concept[=].code = #VS
* concept[=].display = "VISA"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "VISA"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "VISA"
* concept[+].code = #WC
* concept[=].display = "WIC identifier"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "WIC identificatie"
* concept[+].code = #WCN
* concept[=].display = "Workers' Comp Number"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Werknemerscompensatie-nummer"
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString.extension.extension[0].url = "lang"
* concept[=].extension.valueString.extension.extension[=].valueCode = #nl
* concept[=].extension.valueString.extension.extension[+].url = "content"
* concept[=].extension.valueString.extension.extension[=].valueString = "Een identificatie gekoppeld aan een visum voor een persoon die voor een bepaalde periode in een land mag werken."
* concept[=].extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].extension.valueString = "A number associated with a permit for a person who is granted permission to work in a country for a specified time period."
* concept[=].code = #WP
* concept[=].display = "Work Permit"
* concept[=].designation.language = #nl
* concept[=].designation.use = $designation-usage#display
* concept[=].designation.value = "Werkvisum"
* concept[+].code = #XV
* concept[=].display = "Health Plan Identifier"
* concept[+].code = #XX
* concept[=].display = "Organization identifier"
* concept[=].designation[0].language = #de
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Organisations-ID"
* concept[=].designation[+].language = #nl
* concept[=].designation[=].use = $designation-usage#display
* concept[=].designation[=].value = "Organisatie identificatie"