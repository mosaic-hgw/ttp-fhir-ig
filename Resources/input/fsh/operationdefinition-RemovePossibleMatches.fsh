Instance: RemovePossibleMatches
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/epix/RemovePossibleMatches"
* name = "RemovePossibleMatches"
* title = "removePossibleMatches"
* status = #draft
* kind = #operation
* description = "Entfernt Matches aus einer Domäne."
* affectsState = true
* code = #removePossibleMatches
* comment = "(Mögliche) Matches von Identitäten entfernen."
* system = true
* type = false
* instance = false
* parameter[0].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Matching-Domaene"
* parameter[=].type = #string
* parameter[+].name = #linkId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Link-ID eines zu löschen Matches."
* parameter[=].type = #integer
* parameter[+].name = #comment
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Anmerkung zum Löschvorgang"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Rückinformation zum Löschvorgang."
* parameter[=].type = #OperationOutcome


Instance: Parameters-RemovePossibleMatches-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "domain"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "linkId"
* parameter[=].valueInteger = 5654986
* parameter.part[+].name = "comment"
* parameter.part[=].valueString = "Dieser Match war völliger Unsinn!"

Instance: OperationOutcome-RemovePossibleMatches-response-example-1
InstanceOf: OperationOutcome
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * diagnostics = "removed 1 possible match(es)."
