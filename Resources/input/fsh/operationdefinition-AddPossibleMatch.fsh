Instance: AddPossibleMatch
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/AddPossibleMatch"
* name = "AddPossibleMatch"
* title = "addPossibleMatch"
* status = #draft
* kind = #operation
* description = "Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu."
* affectsState = true
* code = #add-possible-match
* comment = "Fügt einen Match zu einem bestimmten MPI-Eintrag einer Domäne hinzu."
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #domain
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Matching-Domaene"
  * type = #string
* parameter[+]
  * name = #mpiId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier)."
  * type = #Identifier
* parameter[+]
  * name = #aliasMpiId
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Identifikator des matchenden MPI-Entrags."
  * type = #Identifier
* parameter[+]
  * name = #match
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Match-Informationen zu zwei Identitäten."
  * part[+]
    * name = #matchItem
    * use = #out
    * min = 2
    * max = "2"
    * documentation = "Die beiden matchenden Identitäten wie im Request übergeben."
    * type = #Patient
  * part[+]
    * name = #matchScore
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Matching-Score"
    * type = #decimal
  * part[+]
    * name = #matchResult
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Matching-Ergebnis"
    * type = #decimal
  * part[+]
    * name = #linkId
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Link-ID des Matches"
    * type = #integer
  * part[+]
    * name = #comment
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Anmerkung zum Match"
    * type = #string


Instance: Parameters-AddPossibleMatch-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "domain"
  * valueString = "MIRACUM"
* parameter[+]
  * name = "mpiId"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000000066"
* parameter[+]
  * name = "aliasMpiId"
  * valueIdentifier
    * system = "https://ths-greifswald.de/fhir/epix/identifier/MPI"
    * value = "1001000068944"

Instance: Parameters-AddPossibleMatch-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter.name = "match"
* parameter.part[0].name = "matchItem"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "52"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:03.200+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-17"
* parameter.part[+].name = "matchItem"
* parameter.part[=].resource.resourceType = "Patient"
* parameter.part[=].resource.id = "53"
* parameter.part[=].resource.meta.versionId = "1"
* parameter.part[=].resource.meta.lastUpdated = "2021-06-17T08:28:24.180+02:00"
* parameter.part[=].resource.meta.source = "dummy_safe_source"
* parameter.part[=].resource.meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/epix/Patient"
* parameter.part[=].resource.active = true
* parameter.part[=].resource.name.family = "xxxxx"
* parameter.part[=].resource.name.given = "Stefanie"
* parameter.part[=].resource.gender = #male
* parameter.part[=].resource.birthDate = "1962-12-16"
* parameter.part[+].name = "matchScore"
* parameter.part[=].valueDecimal = 0.965
* parameter.part[+].name = "matchResult"
* parameter.part[=].valueDecimal = 0.952
* parameter.part[+].name = "linkId"
* parameter.part[=].valueInteger = 5654986
* parameter.part[+].name = "comment"
* parameter.part[=].valueString = "Dieser Match wurde manuell durchgeführt!"
