CodeSystem: ConsentPolicyClass
Id: ConsentPolicyClassCS
Description: "Extensible description of the application perspective of a ConsentPolicy (e.g. selected data view 'IDAT')"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyClass"
* ^version = "1.2"
* ^purpose = "First axis 'Class' of the 'Semantic Consent Code (SCC)' for use as Consent.provision.class"
* ^caseSensitive = true
* ^content = #complete

* #BIOMAT "BIOMAT"
* #BIOMAT  ^designation[0].language = #de-DE
* #BIOMAT  ^designation[=].value = "Biomaterialien"
* #BIOMAT  ^designation[+].language = #en-UK
* #BIOMAT  ^designation[=].value = "biosamples"
* #BIOMAT_analysed_data "BIOMAT_analysed_data"
* #BIOMAT_analysed_data  ^designation[0].language = #de-DE
* #BIOMAT_analysed_data  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_analysed_data  ^designation[=].value = "Auf Biomaterialien basierende Analysedaten"
* #BIOMAT_analysed_data  ^designation[+].language = #de-DE
* #BIOMAT_analysed_data  ^designation[=].use = $csSct#900000000000013009
* #BIOMAT_analysed_data  ^designation[=].value = "BIOMAT_Analysedaten"
* #BIOMAT_analysed_data  ^designation[+].language = #en-UK
* #BIOMAT_analysed_data  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_analysed_data  ^designation[=].value = "analysed data based on biosamples"
* #BIOMAT_retrospective "BIOMAT_retrospective"
* #BIOMAT_retrospective  ^designation[0].language = #de-DE
* #BIOMAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_retrospective  ^designation[=].value = "Retrospektive Biomaterialien"
* #BIOMAT_retrospective  ^designation[+].language = #de-DE
* #BIOMAT_retrospective  ^designation[=].use = $csSct#900000000000013009
* #BIOMAT_retrospective  ^designation[=].value = "BIOMAT_retrospektiv"
* #BIOMAT_retrospective  ^designation[+].language = #en-UK
* #BIOMAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_retrospective  ^designation[=].value = "retrospective biosamples"
* #BIOMAT_analysed_data_retrospective "BIOMAT_analysed_data_retrospective"
* #BIOMAT_analysed_data_retrospective  ^designation[0].language = #de-DE
* #BIOMAT_analysed_data_retrospective  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_analysed_data_retrospective  ^designation[=].value = "Auf retrospektiven Biomaterialien basierende Analysedaten"
* #BIOMAT_analysed_data_retrospective  ^designation[+].language = #de-DE
* #BIOMAT_analysed_data_retrospective  ^designation[=].use = $csSct#900000000000013009
* #BIOMAT_analysed_data_retrospective  ^designation[=].value = "BIOMAT_Analysedaten_retrospektiv"
* #BIOMAT_analysed_data_retrospective  ^designation[+].language = #en-UK
* #BIOMAT_analysed_data_retrospective  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_analysed_data_retrospective  ^designation[=].value = "analysed data based on retrospective biosamples"
* #BIOMAT_additional_sampling "BIOMAT_additional_sampling"
* #BIOMAT_additional_sampling  ^designation[0].language = #de-DE
* #BIOMAT_additional_sampling  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_additional_sampling  ^designation[=].value = "Biomaterialien, insbesondere zusätzlicher Mengen"
* #BIOMAT_additional_sampling  ^designation[+].language = #de-DE
* #BIOMAT_additional_sampling  ^designation[=].use = $csSct#900000000000013009
* #BIOMAT_additional_sampling  ^designation[=].value = "BIOMAT_Zusatzmengen"
* #BIOMAT_additional_sampling  ^designation[+].language = #en-UK
* #BIOMAT_additional_sampling  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_additional_sampling  ^designation[=].value = "biosamples, specifically additional sampling"
* #PII "PII"
* #PII  ^designation[0].language = #de-DE
* #PII  ^designation[=].use = $csSct#900000000000003001
* #PII  ^designation[=].value = "Personenidentifizierende Daten"
* #PII  ^designation[=].use = $csSct#900000000000003001
* #PII  ^designation[+].language = #de-DE
* #PII  ^designation[=].use = $csSct#900000000000013009
* #PII  ^designation[=].value = "IDAT"
* #PII  ^designation[+].language = #en-UK
* #PII  ^designation[=].use = $csSct#900000000000003001
* #PII  ^designation[=].value = "personal identifying information"
* #IMGDAT "IMGDAT"
* #IMGDAT  ^designation[0].language = #de-DE
* #IMGDAT  ^designation[=].use = $csSct#900000000000003001
* #IMGDAT  ^designation[=].value = "Bilder und Bilddaten"
* #IMGDAT  ^designation[+].language = #de-DE
* #IMGDAT  ^designation[=].use = $csSct#900000000000013009
* #IMGDAT  ^designation[=].value = "IMGDAT"
* #IMGDAT  ^designation[+].language = #en-UK
* #IMGDAT  ^designation[=].use = $csSct#900000000000003001
* #IMGDAT  ^designation[=].value = "images and image data"
* #HIDAT "HIDAT"
* #HIDAT  ^designation[0].language = #de-DE
* #HIDAT  ^designation[=].use = $csSct#900000000000003001
* #HIDAT  ^designation[=].value = "Krankenkassendaten"
* #HIDAT  ^designation[+].language = #de-DE
* #HIDAT  ^designation[=].use = $csSct#900000000000013009
* #HIDAT  ^designation[=].value = "KDAT"
* #HIDAT  ^designation[+].language = #en-UK
* #HIDAT  ^designation[=].use = $csSct#900000000000003001
* #HIDAT  ^designation[=].value = "health insurance data"
* #HIDAT_HIPN "HIDAT_HIPN"
* #HIDAT_HIPN  ^designation[0].language = #de-DE
* #HIDAT_HIPN  ^designation[=].use = $csSct#900000000000003001
* #HIDAT_HIPN  ^designation[=].value = "Krankenkassendaten, insbesondere die Krankenkassenversichertennummer"
* #HIDAT_HIPN  ^designation[+].language = #de-DE
* #HIDAT_HIPN  ^designation[=].use = $csSct#900000000000013009
* #HIDAT_HIPN  ^designation[=].value = "KDAT_KVNR"
* #HIDAT_HIPN  ^designation[+].language = #en-UK
* #HIDAT_HIPN  ^designation[=].use = $csSct#900000000000003001
* #HIDAT_HIPN  ^designation[=].value = "health insurance data, specifically the health insurance member ID or policy number"
* #HIDAT_retrospective "HIDAT_retrospective"
* #HIDAT_retrospective  ^designation[0].language = #de-DE
* #HIDAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #HIDAT_retrospective  ^designation[=].value = "Retrospektive Krankenkassendaten"
* #HIDAT_retrospective  ^designation[+].language = #de-DE
* #HIDAT_retrospective  ^designation[=].use = $csSct#900000000000013009
* #HIDAT_retrospective  ^designation[=].value = "KDAT_retrospektiv"
* #HIDAT_retrospective  ^designation[+].language = #en-UK
* #HIDAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #HIDAT_retrospective  ^designation[=].value = "retrospective health insurance data"
* #MDAT "MDAT"
* #MDAT  ^designation[0].language = #de-DE
* #MDAT  ^designation[=].use = $csSct#900000000000003001
* #MDAT  ^designation[=].value = "Medizinische Daten"
* #MDAT  ^designation[+].language = #de-DE
* #MDAT  ^designation[=].use = $csSct#900000000000013009
* #MDAT  ^designation[=].value = "MDAT"
* #MDAT  ^designation[+].language = #en-UK
* #MDAT  ^designation[=].use = $csSct#900000000000003001
* #MDAT  ^designation[=].value = "medical data"
* #MDAT_GECCO83 "MDAT_GECCO83"
* #MDAT_GECCO83  ^designation[0].language = #de-DE
* #MDAT_GECCO83  ^designation[=].use = $csSct#900000000000003001
* #MDAT_GECCO83  ^designation[=].value = "Medizinische Daten, insbesondere GECCO83 Datensatz"
* #MDAT_GECCO83  ^designation[+].language = #de-DE
* #MDAT_GECCO83  ^designation[=].use = $csSct#900000000000013009
* #MDAT_GECCO83  ^designation[=].value = "MDAT_GECCO83"
* #MDAT_GECCO83  ^designation[+].language = #en-UK
* #MDAT_GECCO83  ^designation[=].use = $csSct#900000000000003001
* #MDAT_GECCO83  ^designation[=].value = "medical data, specifically the GECCO83 data set"
* #MDAT_retrospective "MDAT_retrospective"
* #MDAT_retrospective  ^designation[0].language = #de-DE
* #MDAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #MDAT_retrospective  ^designation[=].value = "Retrospektive medizinische Daten"
* #MDAT_retrospective  ^designation[+].language = #de-DE
* #MDAT_retrospective  ^designation[=].use = $csSct#900000000000013009
* #MDAT_retrospective  ^designation[=].value = "MDAT_retrospektiv"
* #MDAT_retrospective  ^designation[+].language = #en-UK
* #MDAT_retrospective  ^designation[=].use = $csSct#900000000000003001
* #MDAT_retrospective  ^designation[=].value = "retrospective medical data"
* #BIOMAT_metadata "BIOMAT_metadata"
* #BIOMAT_metadata  ^designation[0].language = #de-DE
* #BIOMAT_metadata  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_metadata  ^designation[=].value = "Biomaterialien-spezifische Metadaten wie zum Beispiel zu Lagerung und Prozessierung"
* #BIOMAT_metadata  ^designation[+].language = #de-DE
* #BIOMAT_metadata  ^designation[=].use = $csSct#900000000000013009
* #BIOMAT_metadata  ^designation[=].value = "BIOMAT_Metadaten"
* #BIOMAT_metadata  ^designation[+].language = #en-UK
* #BIOMAT_metadata  ^designation[=].use = $csSct#900000000000003001
* #BIOMAT_metadata  ^designation[=].value = "metadata regarding biosamples such as storage and processing"
* #PIDAT "PIDAT"
* #PIDAT  ^designation[0].language = #de-DE
* #PIDAT  ^designation[=].use = $csSct#900000000000003001
* #PIDAT  ^designation[=].value = "Rentenversicherungsdaten"
* #PIDAT  ^designation[+].language = #de-DE
* #PIDAT  ^designation[=].use = $csSct#900000000000013009
* #PIDAT  ^designation[=].value = "PIDAT"
* #PIDAT  ^designation[+].language = #en-UK
* #PIDAT  ^designation[=].use = $csSct#900000000000003001
* #PIDAT  ^designation[=].value = "pension insurance data"