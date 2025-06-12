ValueSet: ConsentStatusObjectionShortValues
Id: ConsentStatusObjectionShortValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusObjectionShortValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[+].code = #OBJECTED
* ^expansion.timestamp = "2024-10-04T12:00:00Z"
* ^expansion.total = 1
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #OBJECTED
* ^expansion.contains[=].display = "Widersprechen"
