Instance: RequestTasks
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* ^status = #active
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/requestTasks"
* name = "RequestTasks"
* title = "requestTasks"
* kind = #operation
* description = "Ein Standort kann seine offenen Aufgaben abrufen. Antwort ist eine Liste von Tasks."
* affectsState = false
* code = #requestTasks
* comment = "Ein Standort kann seine offenen Aufgaben abrufen. Antwort ist eine Liste von Tasks."
* system = true
* type = false
* instance = false
* parameter[0].name = #study
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Studie"
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
* parameter[+].name = #dic_psn_available
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Pseudonym-Rückgabe aus einem Bloomfilter-Request."
* parameter[=].part[0].name = #expires
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Ablaufdatum (danach ist die Information ungültig)"
* parameter[=].part[=].type = #instant
* parameter[=].part[+].name = #bloomfilter
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
* parameter[+].name = #send_idat
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Anforderung, IDAT zu übermitteln."
* parameter[=].part[0].name = #expires
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Ablaufdatum (danach ist die Information ungültig)"
* parameter[=].part[=].type = #instant
* parameter[=].part[+].name = #taskId
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Identifikator der Aufgabe, dient der Rückreferenzierung in der providePatientData Operation."
* parameter[=].part[=].type = #id
* parameter[=].part[+].name = #pseudonym
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Pseudonym. Entweder Pseudonym oder Bloomfilter müssen enthalten sein."
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #bloomfilter
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Bloomfilter. Entweder Pseudonym oder Bloomfilter müssen enthalten sein."
* parameter[=].part[=].type = #base64Binary
* parameter[=].part[+].name = #element
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "*"
* parameter[=].part[=].documentation = "Vorgabe, welche Elemente in den IDAT von providePatientData enthalten sein sollen."
* parameter[=].part[=].type = #Coding
* parameter[=].part[=].binding.strength = #required
* parameter[=].part[=].binding.valueSet = "https://ths-greifswald.de/fhir/ValueSet/dispatcher/IdatElements"
* parameter[+].name = #repeat_request
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Anforderung einen Bloomfilter-Request zu wiederholen."
* parameter[=].part[0].name = #expires
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Ablaufdatum (danach ist die Information ungültig)"
* parameter[=].part[=].type = #instant
* parameter[=].part[+].name = #study
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Angabe der Studie"
* parameter[=].part[=].type = #Identifier
* parameter[=].part[+].name = #bloomfilter
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Studien- und standortspezifischer Bloomfilter (base64-codiert)"
* parameter[=].part[=].type = #base64Binary
* parameter[=].part[+].name = #target
* parameter[=].part[=].use = #out
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "Angabe des Bloomfilter sendenden Standorts (Ziel-Domäne)"
* parameter[=].part[=].type = #Identifier


Instance: Parameters-RequestTasks-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "study"
* parameter[=].valueString = "num"
* parameter[+].name = "target"
* parameter[=].valueString = "codex"
* parameter[+].name = "apikey"
* parameter[=].valueString = "abcdef12345"

Instance: Parameters-RequestTasks-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "dic_psn_available"
* parameter[=].part[0].name = "bloomfilter"
* parameter[=].part[=].valueBase64Binary = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex_6348Q7"
* parameter[+].name = "send_idat"
* parameter[=].part[0].name = "expires"
* parameter[=].part[=].valueInstant = "2021-05-28T13:00:00.00+02:00"
* parameter[=].part[+].name = "taskId"
* parameter[=].part[=].valueId = "064ddebf-b20e-468a-97fd-88097bcdbc11"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex_1244Q2"
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#given
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#family
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#birthdate
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#gender
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#birthplace
* parameter[=].part[+].name = "element"
* parameter[=].part[=].valueCoding = $IdatElements#degree
* parameter[+].name = "repeat_request"
* parameter[=].part[0].name = "study"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "num"
* parameter[=].part[+].name = "bloomfilter"
* parameter[=].part[=].valueBase64Binary = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
* parameter[=].part[+].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://ths-greifswald.de/gpas"
* parameter[=].part[=].valueIdentifier.value = "codex"
