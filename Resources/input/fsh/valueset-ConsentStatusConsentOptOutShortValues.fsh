ValueSet: ConsentStatusConsentOptOutShortValues
Id: ConsentStatusConsentOptOutShortValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentOptOutShortValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[+].code = #ACCEPTED_OPT_OUT
* ^expansion.timestamp = "2024-10-04T12:00:00Z"
* ^expansion.total = 1
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED_OPT_OUT
* ^expansion.contains[=].display = "Ja (Opt-Out)"
