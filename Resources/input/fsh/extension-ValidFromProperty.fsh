Extension: ValidFromProperty
Id: ValidFromProperty
Title: "ValidFromProperty"
Description: "Specifies the point in time from which the domain is valid."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ValidFromProperty"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* value[x] 1.. N
* value[x] only date or Duration
* valueDuration
  * value 1..
  * system 1..
  * system = "http://unitsofmeasure.org"
  * code 1..
