ValueSet: ConsentStatusConsentShortValues
Id: ConsentStatusConsentShortValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[0].code = #ACCEPTED
* ^compose.include[=].concept[+].code = #DECLINED
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 2
* ^expansion.parameter.name = "designation"
* ^expansion.parameter.valueCode = #consent
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #DECLINED
* ^expansion.contains[=].display = "Nein"
* ConsentStatus#ACCEPTED
* ConsentStatus#DECLINED
