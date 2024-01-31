Instance: DeletePseudonyms
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/deletePseudonyms"
* name = "DeletePseudonyms"
* title = "deletePseudonyms"
* kind = #operation
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* affectsState = true
* code = #deletePseudonyms
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* system = true
* type = false
* instance = false
* parameter[0]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Domäne innerhalb derer die angegebenen Originalwerte gelöscht werden."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Angabe der Originalwerte für die in der angegebenen Domäne eine Löschung durchgeführt werden soll."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen durchgeführten Löschungen"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #result-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Erfolgs- bzw. Fehlercode"
    * type = #Coding


Instance: Parameters-DeletePseudonyms-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "target"
* parameter[=].valueString = "MIRACUM"
* parameter[+].name = "original"
* parameter[=].valueString = "1001000000022"
* parameter[+].name = "original"
* parameter[=].valueString = "1001000000033"


Instance: Parameters-DeletePseudonyms-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000022"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_DELETED
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "MIRACUM"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "1001000000033"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding.system = "http://hl7.org/fhir/issue-type"
* parameter[=].part[=].valueCoding.code = #not-found
* parameter[=].part[=].valueCoding.display = "Not Found"
