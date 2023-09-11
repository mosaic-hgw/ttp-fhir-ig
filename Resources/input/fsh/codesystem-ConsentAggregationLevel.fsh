CodeSystem: ConsentAggregationLevel
Id: ConsentAggregationLevelCS
Description: "Level of aggregation for the calculation of the Consent ressource's provisions."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentAggregationLevel"
* ^caseSensitive = true
* ^content = #complete
* #aggregated "aggregated consent status based on one or more source documents"
* #document "document-specific consent status based on a single source document"
* #module "module-specific consent status based on a single source document"
* #policy "policy-specific consent status based on a single source document"