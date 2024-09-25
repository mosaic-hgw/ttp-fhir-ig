Instance: PseudonymizePatient-Bundle-request-example-1
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * resource = PseudonymizePatient-Bundle-request-example-1-Par1
  * request
    * method = #POST
    * url = "$pseudonymize-patient"
* entry[+]
  * resource = PseudonymizePatient-Bundle-request-example-1-Par2
  * request
    * method = #POST
    * url = "$pseudonymize-patient"

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
* name
  * given = "Max"
  * family = "Mustermann"

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
* identifier[+]
  * system = "https://ths-greifswald.de/fhir/sid/epix/bloomfilter"
  * value = "SwagIGJpbiBlubbgQmxvb21maWx0ZXIuIFZlcnNwcm9jaGeier=="
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
