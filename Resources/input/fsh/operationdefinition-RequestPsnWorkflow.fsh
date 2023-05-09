Instance: RequestPsnWorkflow
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* status = #active
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/requestPsnWorkflow"
* name = "RequestPsnWorkflow"
* title = "requestPsnWorkflow"
* kind = #operation
* description = "Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs (Workflow) für einen gegebenen Geltungsbereich (Studie und Standort). Die Rückgabe der generierten standort- und studienspezifischen-Pseudonyme erfolgt als Parameter."
* purpose = "Teil des FHIR Gateway für Dispatcher und gPAS. Weitere Infos unter https://ths-greifswald.de"
* code = #requestPsnWorkflow
* comment = "Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs (Workflow) für einen gegebenen Geltungsbereich (Studie und Standort). Die Rückgabe der generierten standort- und studienspezifischen-Pseudonyme erfolgt als Parameter."
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
* parameter[=].documentation = "Angabe der Quell-Domäne (Herkunft des Originalwertes)"
* parameter[=].type = #string
* parameter[+].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Ziel-Domäne"
* parameter[=].type = #string
* parameter[+].name = #apikey
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Gültiger API-Key zur Authentifizierung und Authorisierung des aufrufenden Systems gegenüber dem verarbeitenden Workflow-Manager"
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
* parameter[=].part[=].documentation = "der zu pseudonymisierende Wert (im Request übergeben)"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "die verwendete Ziel-Domäne (im Request übergeben)"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #pseudonym
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "das in der Ziel-Domäne erzeugte Pseudonym."
* parameter[=].part[=].type = #Identifier
* parameter[+].name = #error
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Wenn einzelne übergebene Parameter fehlerhaft bzw. nicht valide sind, wird statt eines Pseudonyms ein Fehler-Parameter (error-Parameter) mit der Fehlerbeschreibung zurückgeliefert."
* parameter[=].part[0].name = #original
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "der zu pseudonymisierende Wert (im Request übergeben)"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "die verwendete Ziel-Domäne (im Request übergeben)"
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
* parameter[+]
  * name = "study"
  * valueString = "num"
* parameter[+]
  * name = "original"
  * valueString = "dic_1H51T"
* parameter[+]
  * name = "source"
  * valueString = "dic_erlangen"
* parameter[+]
  * name = "target"
  * valueString = "codex"
* parameter[+]
  * name = "apikey"
  * valueString = "abcdef12345"
* parameter[+]
  * name = "event"
  * valueString = "num.getCodexPsn_codex"

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
