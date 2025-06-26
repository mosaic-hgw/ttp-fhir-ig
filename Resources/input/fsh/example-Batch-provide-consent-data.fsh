Instance: example-Batch-provideCD
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * resource = example-provideCD-patient1
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Patient"
* entry[+]
  * resource = example-provideCD-patient2
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Patient"
* entry[+]
  * resource = example-provideCD-patient3
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Patient"
* entry[+]
  * resource = example-provideCD-consent1
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Consent"
* entry[+]
  * resource = example-provideCD-consent2
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Consent"
* entry[+]
  * resource = example-provideCD-consent3
  * request
    * method = #POST
    * url = "https://fhir-server.my-hospital.de/fhir/Consent"


Instance: example-BatchResponse-provideCD
InstanceOf: Bundle
Usage: #example
* type = #batch-response


Instance: example-provideCD-patient1
InstanceOf: PatientPseudonymized
Usage: #inline
* identifier
  * system = "http://my-hospital.de/sid/psn"
  * value = "dic1_PSN1"


Instance: example-provideCD-patient2
InstanceOf: PatientPseudonymized
Usage: #inline
* identifier
  * system = "http://my-hospital.de/sid/psn"
  * value = "dic2_PSN2"


Instance: example-provideCD-patient3
InstanceOf: PatientPseudonymized
Usage: #inline
* identifier
  * system = "http://my-hospital.de/sid/psn"
  * value = "dic3_PSN3"


Instance: example-provideCD-consent1
InstanceOf: Consent
Usage: #inline
* extension[domainReference]
  * extension[domain].valueReference = Reference(ResearchStudy/REGISTERA)
  * extension[status].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#59284-0
* category[+] = $csResultType#document
* category[+] = $csTemplateType#CONSENT-OPT-IN
* patient = Reference(example-provideCD-patient1)
* dateTime = "2025-06-26T13:14:15+02:00"
* organization.display = "Testorganisation"
* policy.uri = "urn:uuid:b0b83c00-e230-4c52-8d3a-cbb882e0a72f"
* provision.type = #deny
* provision.period.start = "2021-10-29T11:00:08+02:00"
* provision.period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_bereitstellen_EU_DSGVO_NIVEAU "Herausgabe identifizierender Daten (IDAT) an verantwortliche Stelle zur weiteren Verarbeitung"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT) in der verantwortlichen Stelle"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-10-29T11:00:08+02:00"
* provision.provision[=].period.end = "2021-11-30T00:00:00+01:00"
* provision.provision[=].code = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT) mit Dritten Forschungspartnern"


Instance: example-provideCD-consent2
InstanceOf: Consent
Usage: #inline
* extension[domainReference]
  * extension[domain].valueReference = Reference(ResearchStudy/REGISTERA)
  * extension[status].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#research
* category[+] = $loinc#59284-0
* category[+] = $csResultType#document
* category[+] = $csTemplateType#WITHDRAWAL
* patient = Reference(example-provideCD-patient2)
* dateTime = "2025-06-26T13:14:15+02:00"
* organization.display = "Testorganisation"
* policy.uri = "urn:uuid:b0b83c00-e230-4c52-8d3a-cbb882e0a72f"
* provision.type = #deny
* provision.period.start = "2021-11-01T13:00:08+02:00"
* provision.period.end = "2021-11-30T00:00:00+01:00"


Instance: example-provideCD-consent3
InstanceOf: Consent
Usage: #inline
* extension[domainReference]
  * extension[domain].valueReference = Reference(ResearchStudy/EPA)
  * extension[status].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#treatment
* category[+] = $loinc#59284-0
* category[+] = $csResultType#document
* category[+] = $csTemplateType#CONSENT-OPT-OUT
* patient = Reference(example-provideCD-patient3)
* dateTime = "2025-06-26T13:14:15+02:00"
* organization.display = "EPA"
* policy.uri = "https://www.gesetze-im-internet.de/sgb_5/__342.html"
* provision.type = #permit
* provision.period.start = "2025-03-04T15:16:17+02:00"
