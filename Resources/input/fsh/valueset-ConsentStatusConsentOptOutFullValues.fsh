ValueSet: ConsentStatusConsentOptOutFullValues
Id: ConsentStatusConsentOptOutFullValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentOptOutFullValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[+].code = #ACCEPTED_OPT_OUT
* ^compose.include[=].concept[+].code = #NOT_ASKED
* ^compose.include[=].concept[+].code = #NOT_CHOSEN
* ^expansion.timestamp = "2024-10-04T12:00:00Z"
* ^expansion.total = 3
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED_OPT_OUT
* ^expansion.contains[=].display = "Ja (Opt-Out)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_ASKED
* ^expansion.contains[=].display = "Nicht gefragt"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_CHOSEN
* ^expansion.contains[=].display = "Nicht gefragt"
