ValueSet: ConsentStatusRefusalFullValues
Id: ConsentStatusRefusalFullValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusRefusalFullValues"
* ^compose.include[0].system = "FIXME"
* ^compose.include[=].concept[0].code = #ACCEPTED
* ^compose.include[=].concept[+].code = #DECLINED
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 4
* ^expansion.parameter.name = "designation"
* ^expansion.parameter.valueCode = #refusal
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED
* ^expansion.contains[=].display = "Einwilligen"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #DECLINED
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_ASKED
* ^expansion.contains[=].display = "Nicht gefragt"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_CHOSEN
* ^expansion.contains[=].display = "Nein"
* ConsentStatus#ACCEPTED
* ConsentStatus#DECLINED
* ConsentStatus#NOT_ASKED
* ConsentStatus#NOT_CHOSEN
