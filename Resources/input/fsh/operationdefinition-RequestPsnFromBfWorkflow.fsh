Instance: RequestPsnFromBfWorkflow
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* status = #active
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/requestPsnFromBfWorkflow"
* name = "RequestPsnFromBfWorkflow"
* title = "requestPsnFromBfWorkflow"
* kind = #operation
* description = "Anlegen und Matching von Patienten rein auf Basis von Bloomfiltern (PPRL) für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten DIC-PSN(s) als Parameter."
* purpose = "Teil des FHIR Gateway für Dispatcher und gPAS. Weitere Infos unter https://ths-greifswald.de"
* code = #requestPsnFromBfWorkflow
* comment = "Anlegen und Matching von Patienten rein auf Basis von Bloomfiltern  (PPRL) für einen gegebenen Geltungsbereich (Studie und Standort)."
* system = true
* type = false
* instance = false
* parameter[0].name = #study
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Studie"
* parameter[=].type = #string
* parameter[+].name = #bloomfilter
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Liste studien- und standortspezifischer Bloomfilter (base64-codiert)"
* parameter[=].type = #base64Binary
* parameter[+].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe des Bloomfilter sendenden Standorts (Ziel-Domäne)"
* parameter[=].type = #string
* parameter[+].name = #apikey
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Gültiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegenüber dem verarbeitenden Workflow-Manager"
* parameter[=].type = #string
* parameter[+].name = #pseudonym-bf
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym"
* parameter[=].part[0].name = #bloomfilter
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Bloomfilter"
* parameter[=].part[=].type = #base64Binary
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Target-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #pseudonym
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Pseudonym"
* parameter[=].part[=].type = #Identifier
* parameter[+].name = #error
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Fehlerrückgabe bei Teil-Fehlern"
* parameter[=].part[0].name = #bloomfilter
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Bloomfilter"
* parameter[=].part[=].type = #base64Binary
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Target-Identifikator"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #error-code
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Fehlercode"
* parameter[=].part[=].type = #Coding


Instance: Parameters-RequestPsnFromBfWorkflow-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "study"
* parameter[=].valueString = "num"
* parameter[+].name = "bloomfilter"
* parameter[=].valueBase64Binary = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
* parameter[+].name = "target"
* parameter[=].valueString = "dic_erlangen"
* parameter[+].name = "apikey"
* parameter[=].valueString = "abcdef12345"

Instance: Parameters-RequestPsnFromBfWorkflow-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "pseudonym-bf"
* parameter[=].part[0].name = "bloomfilter"
* parameter[=].part[=].valueBase64Binary = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "dic_erlangen"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "dic_1H51T"
* parameter[+].name = "error"
* parameter[=].part[0].name = "bloomfilter"
* parameter[=].part[=].valueBase64Binary = "ZHVtbXk="
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "dic_erlangen"
* parameter[=].part[+].name = "error-code"
* parameter[=].part[=].valueCoding = $issue-type#not-found "Not Found"
