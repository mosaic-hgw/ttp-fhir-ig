Instance: PseudonymizePatient
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gpas/pseudonymizePatient"
* name = "PseudonymizePatient"
* title = "pseudonymizePatient"
* kind = #operation
* description = ""
* affectsState = true
* code = #pseudonymizePatient
* comment = "Abfrage je eines Pseudonym-Wertes für einen Originalwert und eine spezifische Domäne. Eine gleichzeitige Verarbeitung von mehreren Pseudonymisierungen kann durch Übergabe mehrerer entsprechender Requests in einem FHIR-Batch-Bundle erfolgen."
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #study
  * use = #in
  * min = 1
  * max = "1"
  * type = #string
  * documentation = "Angabe der Studie auf Basis derer für die angegebenen Originalwerte ein vorhandenens eindeutiges Pseudonym gesucht wird"
* parameter[+]
  * name = #patient
  * use = #in
  * min = 1
  * max = "1"
  * type = #Patient
  * documentation = "Patienten-Ressource des Patienten, der pseudonymisiert werden soll"
* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * type = #string
  * documentation = "Angabe der Domäne auf Basis derer für die angegebenen Originalwerte ein vorhandenens eindeutiges Pseudonym gesucht wird"
* parameter[+]
  * name = #externalPatientId
  * use = #out
  * min = 1
  * max = "1"
  * type = #string
  * documentation = "ID der Patient-Ressource zum Zweck der Rückreferenzierung. Es wird die vom Client übermittelte ID (Element Patient.id) verwendet, in Anlehnung an das Konzept 'Update as Create' as der FHIR-Spezifikation."
* parameter[+]
  * name = #target
  * use = #out
  * min = 1
  * max = "1"
  * type = #Identifier
  * documentation = "Angabe der Domäne (entspricht dem beim Request übermittelten Wert) zum Zweck der Rückreferenzierung"
* parameter[+]
  * name = #pseudonym
  * use = #out
  * min = 0
  * max = "1"
  * type = #Identifier
  * documentation = "Das erzeugte Pseudonym (wird nur im Erfolgsfall übermittelt)"


Instance: PseudonymizePatient-Bundle-request-example-1
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * resource = PseudonymizePatient-Bundle-request-example-1-Par1
  * request
    * method = #POST
    * url = "$pseudonymizePatient"
* entry[+]
  * resource = PseudonymizePatient-Bundle-request-example-1-Par2
  * request
    * method = #POST
    * url = "$pseudonymizePatient"

Instance: PseudonymizePatient-Bundle-request-example-1-Par1
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "study"
  * valueString = "MyStudy"
* parameter[+]
  * name = "patient"
  * resource = aaaaaaaa-8a1e-4442-af99-50abc27d6f52
* parameter[+]
  * name = "target"
  * valueString = "MyStudy-Domain1"

Instance: aaaaaaaa-8a1e-4442-af99-50abc27d6f52
InstanceOf: Patient
Usage: #inline
* identifier[+]
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #MR
  * system = "http://my.fhir.domain.local/fhir/sid/patients"
  * value = "1337"
* identifier[+]
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "A123456789"
* identifier[+]
  * system = "https://ths-greifswald.de/fhir/sid/epix/bloomfilter"
  * value = "SWNoIGJpbiBlaW4gQmxvb21maWx0ZXIuIFZlcnNwcm9jaGVuLg=="

Instance: PseudonymizePatient-Bundle-request-example-1-Par2
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "study"
  * valueString = "MyStudy"
* parameter[+]
  * name = "patient"
  * resource = bbbbbbbb-e258-4471-9ac3-6dfdfac35a6e
* parameter[+]
  * name = "target"
  * valueString = "NotMyStudy-Domain15"

Instance: bbbbbbbb-e258-4471-9ac3-6dfdfac35a6e
InstanceOf: Patient
Usage: #inline
* identifier[+]
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #MR
  * system = "http://my.fhir.domain.local/fhir/sid/patients"
  * value = "0815"
* identifier[+]
  * system = "http://fhir.de/sid/gkv/kvid-10"
  * value = "Z987654321"
* name
  * given = "Herbert"
  * family = "Hinterlist"

Instance: PseudonymizePatient-Bundle-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #batch-response
* entry[+]
  * resource = PseudonymizePatient-Bundle-response-example-1-Par1
  * response
    * status = "200"
    * outcome = PseudonymizePatient-Bundle-response-example-1-Par1OpO
* entry[+]
  * resource = PseudonymizePatient-Bundle-response-example-1-Par2
  * response
    * status = "403"
    * outcome = PseudonymizePatient-Bundle-response-example-1-Par2OpO

Instance: PseudonymizePatient-Bundle-response-example-1-Par1
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "externalPatientId"
  * valueId = "aaaaaaaa-8a1e-4442-af99-50abc27d6f52"
* parameter[+]
  * name = "target"
  * valueIdentifier
    * system = "http://my.fhir.domain.local/fhir/sid/domains"
    * value = "MyStudy-Domain1"
* parameter[+]
  * name = "pseudonym"
  * valueIdentifier
    * system = "http://my.fhir.domain.local/fhir/sid/pseudonyms"
    * value = "56464986521"

Instance: PseudonymizePatient-Bundle-response-example-1-Par1OpO
InstanceOf: OperationOutcome
Usage: #inline
* issue[+]
  * severity = #information
  * code = #informational
  * diagnostics = "Operation completed successfully."

Instance: PseudonymizePatient-Bundle-response-example-1-Par2
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "externalPatientId"
  * valueId = "bbbbbbbb-e258-4471-9ac3-6dfdfac35a6e"
* parameter[+]
  * name = "target"
  * valueIdentifier
    * system = "http://my.fhir.domain.local/fhir/sid/domains"
    * value = "NotMyStudy-Domain15"

Instance: PseudonymizePatient-Bundle-response-example-1-Par2OpO
InstanceOf: OperationOutcome
Usage: #inline
* issue[+]
  * severity = #fatal
  * code = #security
  * diagnostics = "You do not have access to the specified target domain or the specified target domain does not exist."
