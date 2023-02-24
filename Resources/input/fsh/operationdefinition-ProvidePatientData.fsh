Instance: ProvidePatientData
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* status = #active
* url = "https://ths-greifswald.de/fhir/OperationDefinition/dispatcher/providePatientData"
* name = "ProvidePatientData"
* title = "providePatientData"
* kind = #operation
* description = "Identifizierende Daten (IDAT) werden für einen Clearing-Prozess an die föderierte Treuhandstelle (fTTP) übertragen. Die darin enthaltenen Attribute (z.B. Vorname, Nachname, usw.) dienen für ein konventionelles Record Linkage und werden danach in der fTTP unwiederbringlich gelöscht."
* affectsState = true
* code = #providePatientData
* comment = "Identifizierende Daten (IDAT) werden für einen Clearing-Prozess an die föderierte Treuhandstelle (fTTP) übertragen. Die darin enthaltenen Attribute (z.B. Vorname, Nachname, usw.) dienen für ein konventionelles Record Linkage und werden danach in der fTTP unwiederbringlich gelöscht."
* system = true
* type = false
* instance = false
* parameter[0].name = #taskId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Identifikator der Aufgabe; Rückreferenzierung auf die aus der providePatientData Operation erhaltene Aufgabe."
* parameter[=].type = #id
* parameter[+].name = #target
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Ziel-Domäne bzw. des abrufenden Standorts"
* parameter[=].type = #string
* parameter[+].name = #apikey
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Gültiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegenüber dem verarbeitenden Workflow-Manager"
* parameter[=].type = #string
* parameter[+].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient-Ressource die, soweit bekannt, die in der der taskId assoziierten Aufgabe definierten identifizierenden Datenelemente eines Patienten enthält."
* parameter[=].type = #Patient
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle mit den beschriebenen Inhalten"
* parameter[=].type = #Bundle



Instance: Parameters-ProvidePatientData-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "taskId"
* parameter[=].valueId = "064ddebf-b20e-468a-97fd-88097bcdbc11"
* parameter[+].name = "target"
* parameter[=].valueString = "codex"
* parameter[+].name = "apikey"
* parameter[=].valueString = "abcdef12345"
* parameter[+].name = "patient"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* parameter[=].resource.extension.valueAddress.city = "Musterhausen"
* parameter[=].resource.name.family = "Mustermann"
* parameter[=].resource.name.given = "Martin"
* parameter[=].resource.name.prefix = "Dr. med."
* parameter[=].resource.name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* parameter[=].resource.name.prefix.extension.valueCode = #AC
* parameter[=].resource.gender = #male
* parameter[=].resource.birthDate = "1965-12-03"
