Instance: UpdateBf
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* status = #draft
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/UpdateBf"
* name = "UpdateBf"
* title = "updateBf"
* kind = #operation
* description = "Fügt anhand eines bestehenden DIZ-Pseudonyms einen neuen Bloomfilter zu einer bereits vorhandenen Person hinzu."
* code = #updateBf
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
* parameter[=].max = "1"
* parameter[=].documentation = "der hinzu zu fügende Bloomfilter (base64-codiert)"
* parameter[=].type = #base64Binary
* parameter[+].name = #source
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe des Bloomfilter sendenden Standorts (Quell-Domäne, DIZ-Pseudonym)"
* parameter[=].type = #string
* parameter[+].name = #apikey
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Gültiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegenüber dem verarbeitenden Workflow-Manager"
* parameter[=].type = #string
* parameter[+].name = #bfVersion
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bloomfilter-Version."
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Rückinformation."
* parameter[=].type = #OperationOutcome


Instance: Parameters-UpdateBf-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "study"
* parameter[=].valueString = "num"
* parameter[+].name = "bloomfilter"
* parameter[=].valueBase64Binary = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="
* parameter[+].name = "source"
* parameter[=].valueString = "dic_erlangen"
* parameter[+].name = "apikey"
* parameter[=].valueString = "abcdef12345"
* parameter[+].name = "bfVersion"
* parameter[=].valueString = "2"

Instance: OperationOutcome-UpdateBf-response-example-1
InstanceOf: OperationOutcome
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * details.text = "FIXME TODO"
  * diagnostics = "FIXME TODO"
