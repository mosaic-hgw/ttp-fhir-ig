Profile: ConsentQualityControl
Parent: VerificationResult
Id: ConsentQualityControl
Title: "Consent Quality Control"
Description: "Status and additional Information about quality control of a Consent instance"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/VerificationResult/ConsentQualityControl"
* extension contains
    Comment named comment 0..1 MS and
    ExternalProperty named externalProperty 0..* MS
* extension[comment].value[x] MS
* target 1.. MS
* target only Reference($QuestionnaireResponse)
* target ^label = "validierte Consent-Ressource(n)"
* target ^short = "Referenz zu validierte Consent-Ressource(n)"
* target.reference 1.. MS N
* status MS N
* status ^label = "QC-Status"
* status ^short = "QC-Status"
* status ^comment = "Aktuell werden nur die Statuswerte \"validated\" und \"val-fail\" betrachtet."
* statusDate 1.. MS N
* statusDate ^short = "Datum der QC"
* validationType 1.. MS
* validationType ^short = "Typ der Qualitätskontrolle"
* validationType ^comment = "Wird hier als Freitext übermittelt."
* validationType.text 1.. MS N
* attestation 1.. MS
* attestation.who 1.. MS
* attestation.who ^short = "qualitätskontrollierende Person"
* attestation.who.display 1.. MS N


Instance: ConsentQualityControl-example-1
InstanceOf: ConsentQualityControl
Usage: #example
* extension.url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Comment"
* extension.valueString = "Validated. No Errors found."
* target = Reference(QuestionnaireResponse/0f1ccc50-9b24-4f12-a998-49f80d5285c1)
* status = #validated
* statusDate = "2021-12-10T16:16:13+01:00"
* validationType.text = "checked_no_faults"
* attestation.who.display = "Auditor1"
