Profile: ConsentPolicy
Parent: ActivityDefinition
Id: ConsentPolicy
Description: "Abbildung aller relevanten Information zur Verwaltung wiederverwendbarer Einwilligungspolicies mit gICS"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ActivityDefinition/ConsentPolicy"
* . ^short = "Consent Policy"
* . ^definition = "Atomare Aussage zu der eine Person seine Einwilligung erteilen kann"
* meta 1.. MS N
* meta.lastUpdated 1.. MS N
* meta.lastUpdated ^short = "updateDate"
* extension contains
    Created named created 0..1 MS and
    ExternalProperty named externalProperty 0..* MS N
* extension[externalProperty] ^label = "externalProperties"
* extension[externalProperty] ^short = "externalProperties"
* extension[externalProperty] ^definition = "Liste frei konfigurierbarer external Properties nach dem KeyValuePrinzip zur Auswertung durch externe Anwendersysteme"
* extension[externalProperty].extension[key].value[x] MS N
* extension[externalProperty].extension[value].value[x] MS N
* url ..0 N
* identifier ..0 N
* version 1.. MS N
* version ^label = "version"
* version ^short = "version"
* name 1.. MS N
* name ^short = "name"
* name ^definition = "Name der ConsentPolicy (computer friendly)"
* title MS N
* title ^short = "label"
* title ^definition = "Bezeichnung (human friendly)"
* subtitle ..0 N
* status MS N
* status ^short = "finalisiert ja/nein"
* status ^definition = "Bearbeitungsstatus:\r\ngICS-Äquivalente:\r\nfinalized=true => active\r\nfinalized=false => draft"
* experimental ..0 N
* subject[x] ..0 N
* date ..0 N
* publisher ..0 N
* contact ..0 N
* description MS N
* description ^short = "comment"
* description ^definition = "administrative comment"
* useContext 1..1 MS TU
* useContext ^short = "domainName"
* useContext ^definition = "Verweis auf die Domäne"
* useContext.code MS N
* useContext.code.system 1.. MS N
* useContext.code.system = "http://terminology.hl7.org/CodeSystem/usage-context-type" (exactly)
* useContext.code.code 1.. MS N
* useContext.code.code = #program (exactly)
* useContext.value[x] only Reference(ConsentDomain)
* useContext.value[x] MS N
* useContext.value[x].reference 1.. MS N
* jurisdiction ..0 N
* purpose ..0 N
* usage ..0 N
* usage ^short = "comment"
* usage ^definition = "administrative comment"
* copyright ..0 N
* approvalDate ..0 N
* lastReviewDate ..0 N
* effectivePeriod ..0 N
* topic ..0 N
* author ..0 N
* editor ..0 N
* reviewer ..0 N
* endorser ..0 N
* relatedArtifact ..0 TU
* library ..0 N
* kind ..0 N
* profile ..0 N
* code 1.. MS N
* code from $vsPolicy (extensible)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ActivityDefinitionType"
* code.coding 1.. MS N
* code.coding.system 1.. MS N
* code.coding.code 1.. MS N
* intent ..0 N
* priority ..0 N
* doNotPerform ..0 N
* timing[x] ..0 N
* location ..0 N
* participant ..0 N
* product[x] ..0 N
* quantity ..0 N
* dosage ..0 TU
* bodySite ..0 N
* specimenRequirement ..0 N
* observationRequirement ..0 N
* observationResultRequirement ..0 N
* transform ..0 N
* dynamicValue ..0 N


Instance: ConsentPolicy-example-1
InstanceOf: ConsentPolicy
Usage: #example
* meta.lastUpdated = "2020-11-04T19:13:38.269+00:00"
* extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[externalProperty][0].extension[key].valueString = "semantic_code"
* extension[externalProperty][=].extension[value].valueString = "12345"
* version = "1.0"
* name = "MDAT_erheben"
* title = "Medizinische Daten erheben"
* status = #active
* description = "Beispiel Consent Policy für die Erhebung medizinischer Daten im Rahmen eines Forschungsprojektes"
* useContext.code = $usage-context-type#program
* useContext.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b19a6)
* code = $Policy#MDAT_erheben

Instance: ConsentPolicy-example-2
InstanceOf: ConsentPolicy
Usage: #example
* meta.lastUpdated = "2020-11-04T19:13:32.449+00:00"
* extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* version = "1.0"
* name = "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
* title = "Medizinische Daten nutzen"
* status = #active
* description = "Beispiel Consent Policy für die Nutzung medizinischer Daten im Rahmen eines Forschungsprojektes"
* useContext.code = $usage-context-type#program
* useContext.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b19a6)
* code = $Policy#MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU

Instance: ConsentPolicy-example-3
InstanceOf: ConsentPolicy
Usage: #example
* meta.lastUpdated = "2020-11-04T19:13:24.374+00:00"
* extension[created].valueInstant = "2020-01-02T04:05:06+01:00"
* version = "1.0"
* name = "MDAT_speichern_verarbeiten"
* title = "Medizinische Daten speichern"
* status = #active
* description = "Beispiel Consent Policy für die Speicherung medizinischer Daten im Rahmen eines Forschungsprojektes"
* useContext.code = $usage-context-type#program
* useContext.valueReference = Reference(d7a65ce8-2810-401a-b0db-70782a7b19a6)
* code = $Policy#MDAT_speichern_verarbeiten
