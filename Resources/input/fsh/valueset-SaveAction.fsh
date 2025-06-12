ValueSet: SaveAction
Id: SaveActionVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/epix/SaveAction"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^expansion.timestamp = "2021-10-28T12:00:00.000+02:00"
* ^expansion.total = 4
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^expansion.contains[=].code = #DONT_SAVE
* ^expansion.contains[=].display = "don't save"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^expansion.contains[=].code = #DONT_SAVE_ON_PERFECT_MATCH
* ^expansion.contains[=].display = "don't save on perfect match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^expansion.contains[=].code = #DONT_SAVE_ON_PERFECT_MATCH_EXCEPT_CONTACTS
* ^expansion.contains[=].display = "don't save on perfect match except contacts"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^expansion.contains[=].code = #SAVE_ALL
* ^expansion.contains[=].display = "save all"
* include codes from system SaveAction
