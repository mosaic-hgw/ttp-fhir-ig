Instance: example-Batch-verify-consent-state
InstanceOf: Bundle
Usage: #example
* type = #batch
* entry[+]
  * request
    * method = #GET
    * url = "https://fhir-server.my-hospital.de/fhir/Consent?domain:identifier=MII&patient.identifier=https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym|dic_810MT&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&mii-provision-provision-type=permit"
* entry[+]
  * request
    * method = #GET
    * url = "https://fhir-server.my-hospital.de/fhir/Consent?domain:identifier=MII&patient.identifier=https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym|dic_811MT&mii-provision-provision-code=MDAT_erheben&mii-provision-provision-type=permit"


Instance: example-BatchResponse-verify-consent-state
InstanceOf: Bundle
Usage: #example
* type = #batch-response
* entry[+]
  * resource = example-BatchResponse-verify-consent-state-searchset1
  * response
    * status = "200"
* entry[+]
  * resource = example-BatchResponse-verify-consent-state-searchset2
  * response
    * status = "200"


Instance: example-BatchResponse-verify-consent-state-searchset1
InstanceOf: Bundle
Usage: #inline
* type = #searchset
* total = 1
* entry[+]
  * fullUrl = "https://fhir-server.my-hospital.de/fhir/Consent/Consent-example-2"
  * resource = Consent-example-2


Instance: example-BatchResponse-verify-consent-state-searchset2
InstanceOf: Bundle
Usage: #inline
* type = #searchset
* total = 0
