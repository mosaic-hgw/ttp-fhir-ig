Extension: CustomIdatValues
Id: CustomIdatValues
Title: "Custom IDAT Values"
Description: "Set von bis zu zehn individualisierbaren Werten zur Dokumentation von personenidentifizierenden Daten im E-PIX"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/epix/CustomIdatValues"
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* . ^short = "Custom IDAT Values"
* . ^definition = "Custom IDAT Values"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    value1 0..1 MS and
    value2 0..1 MS and
    value3 0..1 MS and
    value4 0..1 MS and
    value5 0..1 MS and
    value6 0..1 MS and
    value7 0..1 MS and
    value8 0..1 MS and
    value9 0..1 MS and
    value10 0..1 MS
* extension[value1] ^label = "value1"
* extension[value1] ^short = "Benutzerdefinierter Wert 1"
* extension[value1].value[x] 1..
* extension[value1].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value2] ^label = "value2"
* extension[value2] ^short = "Benutzerdefinierter Wert 2"
* extension[value2].value[x] 1..
* extension[value2].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value3] ^label = "value3"
* extension[value3] ^short = "Benutzerdefinierter Wert 3"
* extension[value3].value[x] 1..
* extension[value3].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value4] ^label = "value4"
* extension[value4] ^short = "Benutzerdefinierter Wert 4"
* extension[value4].value[x] 1..
* extension[value4].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value5] ^label = "value5"
* extension[value5] ^short = "Benutzerdefinierter Wert 5"
* extension[value5].value[x] 1..
* extension[value5].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value6] ^label = "value6"
* extension[value6] ^short = "Benutzerdefinierter Wert 6"
* extension[value6].value[x] 1..
* extension[value6].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value7] ^label = "value7"
* extension[value7] ^short = "Benutzerdefinierter Wert 7"
* extension[value7].value[x] 1..
* extension[value7].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value8] ^label = "value8"
* extension[value8] ^short = "Benutzerdefinierter Wert 8"
* extension[value8].value[x] 1..
* extension[value8].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value9] ^label = "value9"
* extension[value9] ^short = "Benutzerdefinierter Wert 9"
* extension[value9].value[x] 1..
* extension[value9].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* extension[value10] ^label = "value10"
* extension[value10] ^short = "Benutzerdefinierter Wert 10"
* extension[value10].value[x] 1..
* extension[value10].value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage
* url = "https://ths-greifswald.de/fhir/StructureDefinition/epix/CustomIdatValues" (exactly)
