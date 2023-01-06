Instance: QueryPossibleMatches
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/QueryPossibleMatches"
* name = "QueryPossibleMatches"
* title = "queryPossibleMatches"
* status = #draft
* kind = #operation
* description = "Gibt Matches zu einer Domäne oder zu einem bestimmten MPI-Eintrag aus."
* affectsState = false
* code = #queryPossibleMatches
* comment = "Matchende Identitäts-Informationen sowie zugehörige Meta-Informationen ausgeben."
* system = true
* type = false
* instance = false
* parameter[0].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Matching-Domaene"
* parameter[=].type = #string
* parameter[+].name = #mpiId
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Identifikator eines MPI-Entrags (MPI-ID, Person.identifier). Ist dieser Parameter nicht angegeben, werden alle Matches zur Domäne zurück gegeben."
* parameter[=].type = #Identifier
* parameter[+].name = #match
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Match-Informationen zu zwei Identitäten."
* parameter[=].part[0].name = #matchItem
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 2
* parameter[=].part[=].max = "2"
* parameter[=].part[=].documentation = "Die beiden matchenden Identitäten."
* parameter[=].part[=].type = #Patient
* parameter[=].part[+].name = #matchScore
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Matching-Score"
* parameter[=].part[=].type = #decimal
* parameter[=].part[+].name = #matchResult
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Matching-Ergebnis"
* parameter[=].part[=].type = #decimal
* parameter[=].part[+].name = #linkId
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Link-ID des Matches"
* parameter[=].part[=].type = #integer
* parameter[=].part[+].name = #comment
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Anmerkung zum Match"
* parameter[=].part[=].type = #string


Instance: Parameters-QueryPossibleMatches-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "domain"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "mpiId"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/identifier/BeispielMpiId"
* parameter[=].valueIdentifier.value = "1001000000066"

Instance: Parameters-QueryPossibleMatches-response-example-1
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
