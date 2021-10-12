CodeSystem: Dhb_code
Id: Dhb_code
Title: "District Health Board Code"
Description: "District Health Board code table."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/dhb-code"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "District Health Board code table."
* ^caseSensitive = false
* ^valueSet = "https://standards.digital.health.nz/fhir/ValueSet/dhb-code"
* ^versionNeeded = true
* ^content = #complete
* ^count = 20
* ^property[0].code = #THREE_DIGIT_CODE
* ^property[=].description = "Three digit code."
* ^property[=].type = #code
* ^property[+].code = #FOUR_DIGIT_CODE
* ^property[=].description = "Four digit code."
* ^property[=].type = #code
* ^property[+].code = #CHAR_CODE
* ^property[=].description = "Char code."
* ^property[=].type = #code
* #G00026-A "Northland"
* #G00026-A ^property[0].code = #THREE_DIGIT_CODE
* #G00026-A ^property[=].valueCode = #011
* #G00026-A ^property[+].code = #FOUR_DIGIT_CODE
* #G00026-A ^property[=].valueCode = #1011
* #G00026-A ^property[+].code = #CHAR_CODE
* #G00026-A ^property[=].valueCode = #NLD
* #G00013-C "Waitematā"
* #G00013-C ^property[0].code = #THREE_DIGIT_CODE
* #G00013-C ^property[=].valueCode = #021
* #G00013-C ^property[+].code = #FOUR_DIGIT_CODE
* #G00013-C ^property[=].valueCode = #1021
* #G00013-C ^property[+].code = #CHAR_CODE
* #G00013-C ^property[=].valueCode = #NWA
* #G00011-K "Auckland"
* #G00011-K ^property[0].code = #THREE_DIGIT_CODE
* #G00011-K ^property[=].valueCode = #022
* #G00011-K ^property[+].code = #FOUR_DIGIT_CODE
* #G00011-K ^property[=].valueCode = #1022
* #G00011-K ^property[+].code = #CHAR_CODE
* #G00011-K ^property[=].valueCode = #CAK
* #G00012-A "Counties Manukau"
* #G00012-A ^property[0].code = #THREE_DIGIT_CODE
* #G00012-A ^property[=].valueCode = #023
* #G00012-A ^property[+].code = #FOUR_DIGIT_CODE
* #G00012-A ^property[=].valueCode = #1023
* #G00012-A ^property[+].code = #CHAR_CODE
* #G00012-A ^property[=].valueCode = #SAK
* #G00027-C "Waikato"
* #G00027-C ^property[0].code = #THREE_DIGIT_CODE
* #G00027-C ^property[=].valueCode = #031
* #G00027-C ^property[+].code = #FOUR_DIGIT_CODE
* #G00027-C ^property[=].valueCode = #2031
* #G00027-C ^property[+].code = #CHAR_CODE
* #G00027-C ^property[=].valueCode = #WKO
* #G00028-E "Lakes"
* #G00028-E ^property[0].code = #THREE_DIGIT_CODE
* #G00028-E ^property[=].valueCode = #042
* #G00028-E ^property[+].code = #FOUR_DIGIT_CODE
* #G00028-E ^property[=].valueCode = #2042
* #G00028-E ^property[+].code = #CHAR_CODE
* #G00028-E ^property[=].valueCode = #LKS
* #G00031-E "Bay of Plenty"
* #G00031-E ^property[0].code = #THREE_DIGIT_CODE
* #G00031-E ^property[=].valueCode = #047
* #G00031-E ^property[+].code = #FOUR_DIGIT_CODE
* #G00031-E ^property[=].valueCode = #2047
* #G00031-E ^property[+].code = #CHAR_CODE
* #G00031-E ^property[=].valueCode = #BOP
* #G00029-G "Tairāwhiti"
* #G00029-G ^property[0].code = #THREE_DIGIT_CODE
* #G00029-G ^property[=].valueCode = #051
* #G00029-G ^property[+].code = #FOUR_DIGIT_CODE
* #G00029-G ^property[=].valueCode = #2051
* #G00029-G ^property[+].code = #CHAR_CODE
* #G00029-G ^property[=].valueCode = #TRW
* #G00030-C "Taranaki"
* #G00030-C ^property[0].code = #THREE_DIGIT_CODE
* #G00030-C ^property[=].valueCode = #071
* #G00030-C ^property[+].code = #FOUR_DIGIT_CODE
* #G00030-C ^property[=].valueCode = #2071
* #G00030-C ^property[+].code = #CHAR_CODE
* #G00030-C ^property[=].valueCode = #TKI
* #G00032-G "Hawke's Bay"
* #G00032-G ^property[0].code = #THREE_DIGIT_CODE
* #G00032-G ^property[=].valueCode = #061
* #G00032-G ^property[+].code = #FOUR_DIGIT_CODE
* #G00032-G ^property[=].valueCode = #3061
* #G00032-G ^property[+].code = #CHAR_CODE
* #G00032-G ^property[=].valueCode = #HWB
* #G00033-J "MidCentral"
* #G00033-J ^property[0].code = #THREE_DIGIT_CODE
* #G00033-J ^property[=].valueCode = #081
* #G00033-J ^property[+].code = #FOUR_DIGIT_CODE
* #G00033-J ^property[=].valueCode = #3081
* #G00033-J ^property[+].code = #CHAR_CODE
* #G00033-J ^property[=].valueCode = #MWU
* #G00035-B "Whanganui"
* #G00035-B ^property[0].code = #THREE_DIGIT_CODE
* #G00035-B ^property[=].valueCode = #082
* #G00035-B ^property[+].code = #FOUR_DIGIT_CODE
* #G00035-B ^property[=].valueCode = #3082
* #G00035-B ^property[+].code = #CHAR_CODE
* #G00035-B ^property[=].valueCode = #WNI
* #G00036-D "Capital & Coast"
* #G00036-D ^property[0].code = #THREE_DIGIT_CODE
* #G00036-D ^property[=].valueCode = #091
* #G00036-D ^property[+].code = #FOUR_DIGIT_CODE
* #G00036-D ^property[=].valueCode = #3091
* #G00036-D ^property[+].code = #CHAR_CODE
* #G00036-D ^property[=].valueCode = #CAP
* #G00006-F "Hutt"
* #G00006-F ^property[0].code = #THREE_DIGIT_CODE
* #G00006-F ^property[=].valueCode = #092
* #G00006-F ^property[+].code = #FOUR_DIGIT_CODE
* #G00006-F ^property[=].valueCode = #3092
* #G00006-F ^property[+].code = #CHAR_CODE
* #G00006-F ^property[=].valueCode = #HUT
* #G00037-F "Wairarapa"
* #G00037-F ^property[0].code = #THREE_DIGIT_CODE
* #G00037-F ^property[=].valueCode = #093
* #G00037-F ^property[+].code = #FOUR_DIGIT_CODE
* #G00037-F ^property[=].valueCode = #3093
* #G00037-F ^property[+].code = #CHAR_CODE
* #G00037-F ^property[=].valueCode = #WRP
* #G00038-H "Nelson Marlborough"
* #G00038-H ^property[0].code = #THREE_DIGIT_CODE
* #G00038-H ^property[=].valueCode = #101
* #G00038-H ^property[+].code = #FOUR_DIGIT_CODE
* #G00038-H ^property[=].valueCode = #3101
* #G00038-H ^property[+].code = #CHAR_CODE
* #G00038-H ^property[=].valueCode = #NLM
* #G00039-K "West Coast"
* #G00039-K ^property[0].code = #THREE_DIGIT_CODE
* #G00039-K ^property[=].valueCode = #111
* #G00039-K ^property[+].code = #FOUR_DIGIT_CODE
* #G00039-K ^property[=].valueCode = #4111
* #G00039-K ^property[+].code = #CHAR_CODE
* #G00039-K ^property[=].valueCode = #WCO
* #G00005-D "Canterbury"
* #G00005-D ^property[0].code = #THREE_DIGIT_CODE
* #G00005-D ^property[=].valueCode = #121
* #G00005-D ^property[+].code = #FOUR_DIGIT_CODE
* #G00005-D ^property[=].valueCode = #4121
* #G00005-D ^property[+].code = #CHAR_CODE
* #G00005-D ^property[=].valueCode = #CTY
* #G00025-K "South Canterbury"
* #G00025-K ^property[0].code = #THREE_DIGIT_CODE
* #G00025-K ^property[=].valueCode = #123
* #G00025-K ^property[+].code = #FOUR_DIGIT_CODE
* #G00025-K ^property[=].valueCode = #4123
* #G00025-K ^property[+].code = #CHAR_CODE
* #G00025-K ^property[=].valueCode = #SCY
* #G02328-E "Southern"
* #G02328-E ^property[0].code = #THREE_DIGIT_CODE
* #G02328-E ^property[=].valueCode = #160
* #G02328-E ^property[+].code = #FOUR_DIGIT_CODE
* #G02328-E ^property[=].valueCode = #4160
* #G02328-E ^property[+].code = #CHAR_CODE
* #G02328-E ^property[=].valueCode = #SRN