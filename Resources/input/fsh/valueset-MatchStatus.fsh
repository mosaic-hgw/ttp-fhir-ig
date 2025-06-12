ValueSet: MatchStatus
Id: MatchStatusVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/epix/MatchStatus"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.timestamp = "2021-10-28T12:00:00.000+02:00"
* ^expansion.total = 8
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #EXTERNAL_MATCH
* ^expansion.contains[=].display = "external match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #MATCH
* ^expansion.contains[=].display = "match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #MATCH_ERROR
* ^expansion.contains[=].display = "match error"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #MULTIPLE_MATCH
* ^expansion.contains[=].display = "multiple match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #NO_MATCH
* ^expansion.contains[=].display = "no match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #PERFECT_MATCH
* ^expansion.contains[=].display = "perfect match"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #PERFECT_MATCH_WITH_UPDATE
* ^expansion.contains[=].display = "perfect match with update"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^expansion.contains[=].code = #POSSIBLE_MATCH
* ^expansion.contains[=].display = "possible match"
* include codes from system MatchStatus
