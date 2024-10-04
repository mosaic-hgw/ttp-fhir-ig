Instance: InsertValuePseudonymPairs
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/insertValuePseudonymPairs"
* name = "InsertValuePseudonymPairs"
* title = "insertValuePseudonymPairs"
* kind = #operation
* description = "Fügt ein Wertepaar bestehend aus Originalwert und Pseudonym in eine vorkonfigurierte Domäne ein, z.B. für die Migration von Bestandspseudonymen"
* affectsState = true
* code = #insertValuePseudonymPairs
* comment = ""
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Tripel mit den Angaben zu Original und zu setzendem Pseudonym."
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe der Domäne, in welche das Wertepaare Original-Wert & Pseudonym eingefügt werden soll. Ist bei allen Tripeln eines Requests der target-Parameter identisch, erfolgt die interne Verarbeitung mit erhöhter Performance."
    * type = #string
    * searchType = #string
  * part[+]
    * name = #original
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Originalwertes des Werte-Paares"
    * type = #string
    * searchType = #string
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Pseudonyms des Werte-Paares. Das Pseudonym muss den konfigurierten Vorgaben der Zieldomäne entsprechend und wird im Regelfall vor dem Einfügen durch den gPAS validiert."
    * type = #string
    * searchType = #string
* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym"
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #target
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Pseudonym"
    * type = #Identifier
  * part[+]
    * name = #successStatus
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Erfolgsstatus"
    * type = #Coding

* parameter[+]
  * name = #error
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Fehlerrückgabe bei Teil-Fehlern"
  * part[+]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #pseudonym
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Pseudonym"
    * type = #Identifier
  * part[+]
    * name = #error-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Fehlercode"
    * type = #Coding


Instance: Parameters-InsertValuePseudonymPairs-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "pseudonym"
  * part[+]
    * name = "target"
    * valueString = "MIRACUM"
  * part[+]
    * name = "original"
    * valueString = "1001000000022"
  * part[+]
    * name = "value"
    * valueString = "mrcm_T0TYNV21"

Instance: Parameters-InsertValuePseudonymPairs-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0]
  * name = "successStatus"
  * part[+]
    * name = "target"
    * valueIdentifier.system = "https://ths-greifswald.de/gpas"
    * valueIdentifier.value = "MIRACUM"
  * part[+]
    * name = "original"
    * valueIdentifier.system = "https://ths-greifswald.de/gpas"
    * valueIdentifier.value = "1001000000022"
  * part[+]
    * name = "value"
    * valueIdentifier.system = "https://ths-greifswald.de/gpas"
    * valueIdentifier.value = "mrcm_T0TYNV21"
  * part[+]
    * name = "successStatus"
    * valueCoding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
    * valueCoding.code = #MSG_CREATED

Instance: Parameters-InsertValuePseudonymPairs-response-example-2
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "error"
  * part[+]
    * name = "target"
    * valueIdentifier.system = "https://ths-greifswald.de/gpas"
    * valueIdentifier.value = "DOMAINXY"
  * part[+]
    * name = "error-code"
    * valueCoding.system = "http://hl7.org/fhir/issue-type"
    * valueCoding.code = #not-found
    * valueCoding.display = "Not Found"
