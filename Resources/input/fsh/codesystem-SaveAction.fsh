CodeSystem: SaveAction
Id: SaveActionCS
Description: "Possible save actions in the context of adding patient identities."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/epix/SaveAction"
* ^caseSensitive = true
* ^content = #complete
* #DONT_SAVE "don't save"
* #DONT_SAVE_ON_PERFECT_MATCH "don't save on perfect match"
* #DONT_SAVE_ON_PERFECT_MATCH_EXCEPT_CONTACTS "don't save on perfect match except contacts"
* #SAVE_ALL "save all"
