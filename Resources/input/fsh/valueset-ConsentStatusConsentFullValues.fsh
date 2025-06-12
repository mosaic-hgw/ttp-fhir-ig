ValueSet: ConsentStatusConsentFullValues
Id: ConsentStatusConsentFullValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentFullValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[0].code = #ACCEPTED
* ^compose.include[=].concept[+].code = #WITHDRAWN
* ^compose.include[=].concept[+].code = #NOT_ASKED
* ^compose.include[=].concept[+].code = #NOT_CHOSEN
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 4
* ^expansion.parameter.name = "designation"
* ^expansion.parameter.valueCode = #consent
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #DECLINED
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_ASKED
* ^expansion.contains[=].display = "Nicht gefragt"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_CHOSEN
* ^expansion.contains[=].display = "Überspringen"
* ConsentStatus#ACCEPTED
* ConsentStatus#DECLINED
* ConsentStatus#NOT_ASKED
* ConsentStatus#NOT_CHOSEN
