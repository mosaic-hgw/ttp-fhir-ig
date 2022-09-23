Instance: RequestPsnWorkflow
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/requestPsnWorkflow"
* name = "RequestPsnWorkflow"
* title = "requestPsnWorkflow"
* kind = #operation
* description = "Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten standort- und studienspezifischen-Pseudonyme als Params."
* purpose = "Teil des FHIR Gateway für Dispatcher und gPAS. Weitere Infos unter https://ths-greifswald.de"
* code = #requestPsnWorkflow
* comment = "Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten standort- und studienspezifischen-Pseudonyme als Params."
* system = true
* type = false
* instance = false
* parameter[0].name = #original
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Liste studien- und standortspezifischer Originalwerte für die entsprechende Pseudonyme ermittelt bzw. erstellt werden."
* parameter[=].type = #string
* parameter[+].name = #study
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Studie"
* parameter[=].type = #string
* parameter[+].name = #source
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Pseudonymisierungsquell-Domain (Herkunft des Originalwertes)"
* parameter[=].type = #string
* parameter[+].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Pseudonymisierungsziel-Domain"
* parameter[=].type = #string
* parameter[+].name = #apikey
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Gültiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegenüber dem verarbeitenden Workflow-Manager"
* parameter[=].type = #string
* parameter[+].name = #event
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Optionaler Parameter. Auszulösendes, vorkonfiguriertes Pseudonymisierungsevents innerhalb des Workflow-Managers."
* parameter[=].type = #string
* parameter[+].name = #pseudonym
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym"
* parameter[=].part[0].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Original-Identifikator"
* parameter[=].part[=].type = #Identifier
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
* parameter[=].part[0].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Original-Identifikator"
* parameter[=].part[=].type = #Identifier
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


Instance: Parameters-RequestPsnWorkflow-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "study"
* parameter[=].valueString = "num"
* parameter[+].name = "original"
* parameter[=].valueString = "dic_1H51T"
* parameter[+].name = "source"
* parameter[=].valueString = "dic_erlangen"
* parameter[+].name = "target"
* parameter[=].valueString = "codex"
* parameter[+].name = "apikey"
* parameter[=].valueString = "abcdef12345"

Instance: Parameters-RequestPsnWorkflow-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "pseudonym"
* parameter[=].part[0].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "dic_1H51T"
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex_6348Q7"
* parameter[+].name = "error"
* parameter[=].part[0].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "dic_2Q42E"
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex"
* parameter[=].part[+].name = "error-code"
* parameter[=].part[=].valueCoding = $issue-type#not-found "Not Found"
