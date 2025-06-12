Extension: Created
Id: Created
Title: "Created"
Description: "When the resource version was created"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Created"
* ^context.type = #element
* ^context.expression = "Resource.meta"
* value[x] 1.. N
* value[x] only instant
