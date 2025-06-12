CodeSystem: MatchStatus
Id: MatchStatusCS
Description: "Possible match statuses in the context of adding patient identities."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/epix/MatchStatus"
* ^caseSensitive = true
* ^content = #complete
* #EXTERNAL_MATCH "external match"
* #MATCH "match"
* #MATCH_ERROR "match error"
* #MULTIPLE_MATCH "multiple match"
* #NO_MATCH "no match"
* #PERFECT_MATCH "perfect match"
* #PERFECT_MATCH_WITH_UPDATE "perfect match with update"
* #POSSIBLE_MATCH "possible match"
