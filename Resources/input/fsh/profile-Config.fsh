Profile: Config
Parent: Parameters
Id: Config
Title: "gics client definable configuration Config"
Description: "giCS client definable configuration parameters for use as input parameters in multiple giCS operations."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Parameters/Config"
* parameter 1..4 N
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains
    idMatchingType 0..1 N and
    ignoreVersionNumber 0..1 N and
    unknownStateIsConsideredAsDecline 0..1 N and
    requestDate 0..1 N
* parameter[idMatchingType] ^meaningWhenMissing = "AT_LEAST_ONE"
* parameter[idMatchingType].name = "idMatchingType" (exactly)
* parameter[idMatchingType].name N
* parameter[idMatchingType].value[x] 1.. N
* parameter[idMatchingType].value[x] only Coding
* parameter[idMatchingType].value[x] from IdMatchingType (required)
* parameter[idMatchingType].value[x].system 1.. N
* parameter[idMatchingType].value[x].code 1.. N
* parameter[idMatchingType].resource ..0
* parameter[idMatchingType].part ..0
* parameter[ignoreVersionNumber] ^meaningWhenMissing = "false"
* parameter[ignoreVersionNumber].name = "ignoreVersionNumber" (exactly)
* parameter[ignoreVersionNumber].name N
* parameter[ignoreVersionNumber].value[x] 1.. N
* parameter[ignoreVersionNumber].value[x] only boolean
* parameter[ignoreVersionNumber].resource ..0
* parameter[ignoreVersionNumber].part ..0
* parameter[unknownStateIsConsideredAsDecline] ^meaningWhenMissing = "false"
* parameter[unknownStateIsConsideredAsDecline].name = "unknownStateIsConsideredAsDecline" (exactly)
* parameter[unknownStateIsConsideredAsDecline].name N
* parameter[unknownStateIsConsideredAsDecline].value[x] 1.. N
* parameter[unknownStateIsConsideredAsDecline].value[x] only boolean
* parameter[unknownStateIsConsideredAsDecline].resource ..0
* parameter[unknownStateIsConsideredAsDecline].part ..0
* parameter[requestDate].name = "requestDate" (exactly)
* parameter[requestDate].name N
* parameter[requestDate].value[x] 1.. N
* parameter[requestDate].value[x] only date
* parameter[requestDate].resource ..0
* parameter[requestDate].part ..0
