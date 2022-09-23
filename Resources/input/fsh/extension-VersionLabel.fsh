Extension: VersionLabel
Id: VersionLabel
Title: "Version Label"
Description: "Versions-Label"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/VersionLabel"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . N
* . ^short = "Versions-Label"
* . ^definition = "Versions-Label"
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/VersionLabel" (exactly)
* value[x] 1.. N
* value[x] only string
