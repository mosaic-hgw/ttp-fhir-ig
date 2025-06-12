Extension: SignatureLocation
Id: SignatureLocation
Title: "SignatureLocation"
Description: "Where the signature took place"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/SignatureLocation"
* ^context.type = #element
* ^context.expression = "Provenance.signature"
* value[x] 0..1 N
* value[x] only string
