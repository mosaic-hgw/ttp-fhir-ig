CodeSystem: ConsentPolicyPurpose
Id: ConsentPolicyPurposeCS
Description: "Expandable specification of the application context and/or scope of a consent policy or module"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyPurpose"
* ^version = "1.2"
* ^purpose = "Third axis 'purpose' of the 'Semantic Consent Code (SCC)' for use as Consent.provision.purpose"
* ^caseSensitive = true
* ^content = #complete
* #health_state "health_state"
* #health_state  ^designation[0].language = #de-DE
* #health_state  ^designation[=].use = $csSct#900000000000003001
* #health_state  ^designation[=].value = "des Gesundheitszustandes"
* #health_state  ^designation[+].language = #de-DE
* #health_state  ^designation[=].use = $csSct#900000000000013009
* #health_state  ^designation[=].value = "Gesundheitszustand"
* #health_state  ^designation[+].language = #en-UK
* #health_state  ^designation[=].use = $csSct#900000000000003001
* #health_state  ^designation[=].value = "the state of health"
* #general_practitioner "general_practitioner"
* #general_practitioner  ^designation[0].language = #de-DE
* #general_practitioner  ^designation[=].use = $csSct#900000000000003001
* #general_practitioner  ^designation[=].value = "des Hausarztes"
* #general_practitioner  ^designation[+].language = #de-DE
* #general_practitioner  ^designation[=].use = $csSct#900000000000013009
* #general_practitioner  ^designation[=].value = "Arzt"
* #general_practitioner  ^designation[+].language = #en-UK
* #general_practitioner  ^designation[=].use = $csSct#900000000000003001
* #general_practitioner  ^designation[=].value = "from/to the general practitioner /family doctor"
* #physician "physician"
* #physician  ^designation[0].language = #de-DE
* #physician  ^designation[=].use = $csSct#900000000000003001
* #physician  ^designation[=].value = "des Arztes"
* #physician  ^designation[+].language = #de-DE
* #physician  ^designation[=].use = $csSct#900000000000013009
* #physician  ^designation[=].value = "Hausarzt"
* #physician  ^designation[+].language = #en-UK
* #physician  ^designation[=].use = $csSct#900000000000003001
* #physician  ^designation[=].value = "from/to the physician"
* #CRO "CRO"
* #CRO  ^designation[0].language = #de-DE
* #CRO  ^designation[=].use = $csSct#900000000000003001
* #CRO  ^designation[=].value = "von/an eine Contract Research Organisation und oder eine klinische Koordinierungsstelle (KKS)"
* #CRO  ^designation[+].language = #de-DE
* #CRO  ^designation[=].use = $csSct#900000000000013009
* #CRO  ^designation[=].value = "CRO"
* #CRO  ^designation[+].language = #en-UK
* #CRO  ^designation[=].use = $csSct#900000000000003001
* #CRO  ^designation[=].value = "from/to a clinical research organisation"
* #third_parties "third_parties"
* #third_parties  ^designation[0].language = #de-DE
* #third_parties  ^designation[=].use = $csSct#900000000000003001
* #third_parties  ^designation[=].value = "von/an/mit Dritte(n) Forschungspartner(n)"
* #third_parties  ^designation[+].language = #de-DE
* #third_parties  ^designation[=].use = $csSct#900000000000013009
* #third_parties  ^designation[=].value = "Dritte"
* #third_parties  ^designation[+].language = #en-UK
* #third_parties  ^designation[=].use = $csSct#900000000000003001
* #third_parties  ^designation[=].value = "from/to third parties /with third party research partner(s)"
* #EU_GDPR_LEVEL "EU_GDPR_LEVEL"
* #EU_GDPR_LEVEL  ^designation[0].language = #de-DE
* #EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000003001
* #EU_GDPR_LEVEL  ^designation[=].value = "an Länder mit EU Datenschutzniveau"
* #EU_GDPR_LEVEL  ^designation[+].language = #de-DE
* #EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000013009
* #EU_GDPR_LEVEL  ^designation[=].value = "EU_DSGVO_NIVEAU"
* #EU_GDPR_LEVEL  ^designation[+].language = #en-UK
* #EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000003001
* #EU_GDPR_LEVEL  ^designation[=].value = "to countries with EU data protection level"
* #non_EU_GDPR_LEVEL "non_EU_GDPR_LEVEL"
* #non_EU_GDPR_LEVEL  ^designation[0].language = #de-DE
* #non_EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000003001
* #non_EU_GDPR_LEVEL  ^designation[=].value = "an Länder ohne EU Datenschutzniveau"
* #non_EU_GDPR_LEVEL  ^designation[+].language = #de-DE
* #non_EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000013009
* #non_EU_GDPR_LEVEL  ^designation[=].value = "non_EU_DSGVO_NIVEAU"
* #non_EU_GDPR_LEVEL  ^designation[+].language = #en-UK
* #non_EU_GDPR_LEVEL  ^designation[=].use = $csSct#900000000000003001
* #non_EU_GDPR_LEVEL  ^designation[=].value = "to countries without EU data protection level"
* #industry "industry"
* #industry  ^designation[0].language = #de-DE
* #industry  ^designation[=].use = $csSct#900000000000003001
* #industry  ^designation[=].value = "an Partner aus dem Bereich der Industrie"
* #industry  ^designation[+].language = #de-DE
* #industry  ^designation[=].use = $csSct#900000000000013009
* #industry  ^designation[=].value = "Industrie"
* #industry  ^designation[+].language = #en-UK
* #industry  ^designation[=].use = $csSct#900000000000003001
* #industry  ^designation[=].value = "to partners from the industrial sector"
* #health_records "health_records"
* #health_records  ^designation[0].language = #de-DE
* #health_records  ^designation[=].use = $csSct#900000000000003001
* #health_records  ^designation[=].value = "durch Übertrag in/aus (elektronischen) Krankenunterlagen/Patientenakten"
* #health_records  ^designation[+].language = #de-DE
* #health_records  ^designation[=].use = $csSct#900000000000013009
* #health_records  ^designation[=].value = "Krankenunterlagen"
* #health_records  ^designation[+].language = #en-UK
* #health_records  ^designation[=].use = $csSct#900000000000003001
* #health_records  ^designation[=].value = "by transfer to/from (electronic) health records"
* #monitoring "monitoring"
* #monitoring  ^designation[0].language = #de-DE
* #monitoring  ^designation[=].use = $csSct#900000000000003001
* #monitoring  ^designation[=].value = "im Rahmen eines Monitoring"
* #monitoring  ^designation[+].language = #de-DE
* #monitoring  ^designation[=].use = $csSct#900000000000013009
* #monitoring  ^designation[=].value = "Monitoring"
* #monitoring  ^designation[+].language = #en-UK
* #monitoring  ^designation[=].use = $csSct#900000000000003001
* #monitoring  ^designation[=].value = "as part of a monitoring"
* #non_profit "non_profit"
* #non_profit  ^designation[0].language = #de-DE
* #non_profit  ^designation[=].use = $csSct#900000000000003001
* #non_profit  ^designation[=].value = "an Partner aus Non-Profit-Organisationen"
* #non_profit  ^designation[+].language = #de-DE
* #non_profit  ^designation[=].use = $csSct#900000000000013009
* #non_profit  ^designation[=].value = "non_profit"
* #non_profit  ^designation[+].language = #en-UK
* #non_profit  ^designation[=].use = $csSct#900000000000003001
* #non_profit  ^designation[=].value = "to partners from non-profit organisations"
* #pharma "pharma"
* #pharma  ^designation[0].language = #de-DE
* #pharma  ^designation[=].use = $csSct#900000000000003001
* #pharma  ^designation[=].value = "an eine am Sponsoring beteiligte Pharmafirma"
* #pharma  ^designation[+].language = #de-DE
* #pharma  ^designation[=].use = $csSct#900000000000013009
* #pharma  ^designation[=].value = "pharma"
* #pharma  ^designation[+].language = #en-UK
* #pharma  ^designation[=].use = $csSct#900000000000003001
* #pharma  ^designation[=].value = "to a pharmaceutical company involved in the sponsorship"
* #project_specific "project_specific"
* #project_specific  ^designation[0].language = #de-DE
* #project_specific  ^designation[=].use = $csSct#900000000000003001
* #project_specific  ^designation[=].value = "im Rahmen des spezifischen Vorhabens/Projektes oder der spezifischen Studie"
* #project_specific  ^designation[+].language = #de-DE
* #project_specific  ^designation[=].use = $csSct#900000000000013009
* #project_specific  ^designation[=].value = "Vorhaben_spezifisch"
* #project_specific  ^designation[+].language = #en-UK
* #project_specific  ^designation[=].use = $csSct#900000000000003001
* #project_specific  ^designation[=].value = "for a  specific research project or study"
* #project_participation "project_participation"
* #project_participation  ^designation[0].language = #de-DE
* #project_participation  ^designation[=].use = $csSct#900000000000003001
* #project_participation  ^designation[=].value = "über die Teilnahme der betroffenen Person am spezifischen Vorhaben/Projekt oder einer spezifischen Studie"
* #project_participation  ^designation[+].language = #de-DE
* #project_participation  ^designation[=].use = $csSct#900000000000013009
* #project_participation  ^designation[=].value = "Vorhaben_Teilnahme"
* #project_participation  ^designation[+].language = #en-UK
* #project_participation  ^designation[=].use = $csSct#900000000000003001
* #project_participation  ^designation[=].value = "on the participation of the data subject in the specific project or a specific study"
* #death "death"
* #death  ^designation[0].language = #de-DE
* #death  ^designation[=].use = $csSct#900000000000003001
* #death  ^designation[=].value = "im Falle des Todes der betroffenen Person"
* #death  ^designation[+].language = #de-DE
* #death  ^designation[=].use = $csSct#900000000000013009
* #death  ^designation[=].value = "Tod"
* #death  ^designation[+].language = #en-UK
* #death  ^designation[=].use = $csSct#900000000000003001
* #death  ^designation[=].value = "in the event of the death of the person concerned"
* #timely_unrestricted "timely_unrestricted "
* #timely_unrestricted  ^designation[0].language = #de-DE
* #timely_unrestricted  ^designation[=].use = $csSct#900000000000003001
* #timely_unrestricted  ^designation[=].value = "ohne zeitliche Einschränkung"
* #timely_unrestricted  ^designation[+].language = #de-DE
* #timely_unrestricted  ^designation[=].use = $csSct#900000000000013009
* #timely_unrestricted  ^designation[=].value = "uneingeschraenkt"
* #timely_unrestricted  ^designation[+].language = #en-UK
* #timely_unrestricted  ^designation[=].use = $csSct#900000000000003001
* #timely_unrestricted  ^designation[=].value = " without timely restriction"
* #timely_restricted "timely_restricted"
* #timely_restricted  ^designation[0].language = #de-DE
* #timely_restricted  ^designation[=].use = $csSct#900000000000003001
* #timely_restricted  ^designation[=].value = "mit zeitlicher Einschränkung"
* #timely_restricted  ^designation[+].language = #de-DE
* #timely_restricted  ^designation[=].use = $csSct#900000000000013009
* #timely_restricted  ^designation[=].value = "zeitlich_eingeschraenkt"
* #timely_restricted  ^designation[+].language = #en-UK
* #timely_restricted  ^designation[=].use = $csSct#900000000000003001
* #timely_restricted  ^designation[=].value = "with timely restriction"
* #once "once"
* #once  ^designation[0].language = #de-DE
* #once  ^designation[=].use = $csSct#900000000000003001
* #once  ^designation[=].value = "einmalig"
* #once  ^designation[+].language = #de-DE
* #once  ^designation[=].use = $csSct#900000000000013009
* #once  ^designation[=].value = "einmalig"
* #once  ^designation[+].language = #en-UK
* #once  ^designation[=].use = $csSct#900000000000003001
* #once  ^designation[=].value = "once"
* #databases "databases"
* #databases  ^designation[0].language = #de-DE
* #databases  ^designation[=].use = $csSct#900000000000003001
* #databases  ^designation[=].value = "Informationen anderer Datenbanken"
* #databases  ^designation[+].language = #de-DE
* #databases  ^designation[=].use = $csSct#900000000000013009
* #databases  ^designation[=].value = "Datenbanken"
* #databases  ^designation[+].language = #en-UK
* #databases  ^designation[=].use = $csSct#900000000000003001
* #databases  ^designation[=].value = "information from other databases"
* #additional_collection "additional_collection"
* #additional_collection  ^designation[0].language = #de-DE
* #additional_collection  ^designation[=].use = $csSct#900000000000003001
* #additional_collection  ^designation[=].value = "Erhebung zusätzlicher [CLASS]"
* #additional_collection  ^designation[+].language = #de-DE
* #additional_collection  ^designation[=].use = $csSct#900000000000013009
* #additional_collection  ^designation[=].value = "weitere_Erhebungen"
* #additional_collection  ^designation[+].language = #en-UK
* #additional_collection  ^designation[=].use = $csSct#900000000000003001
* #additional_collection  ^designation[=].value = "collection of additional [CLASS]"
* #additional_studies "additional_studies"
* #additional_studies  ^designation[0].language = #de-DE
* #additional_studies  ^designation[=].use = $csSct#900000000000003001
* #additional_studies  ^designation[=].value = "Informationen zu neuen Vorhaben/Projekten oder Studien"
* #additional_studies  ^designation[+].language = #de-DE
* #additional_studies  ^designation[=].use = $csSct#900000000000013009
* #additional_studies  ^designation[=].value = "weitere_Studien"
* #additional_studies  ^designation[+].language = #en-UK
* #additional_studies  ^designation[=].use = $csSct#900000000000003001
* #additional_studies  ^designation[=].value = "information on new projects or studies"
* #additional_findings "additional_findings"
* #additional_findings  ^designation[0].language = #de-DE
* #additional_findings  ^designation[=].use = $csSct#900000000000003001
* #additional_findings  ^designation[=].value = "Mitteilung von Zusatz- oder Nebenbefunden"
* #additional_findings  ^designation[+].language = #de-DE
* #additional_findings  ^designation[=].use = $csSct#900000000000013009
* #additional_findings  ^designation[=].value = "Zusatzbefund"
* #additional_findings  ^designation[+].language = #en-UK
* #additional_findings  ^designation[=].use = $csSct#900000000000003001
* #additional_findings  ^designation[=].value = "notification of additional or incidental findings"
* #HI "HI"
* #HI  ^designation[0].language = #de-DE
* #HI  ^designation[=].use = $csSct#900000000000003001
* #HI  ^designation[=].value = "von/an Krankenversicherungen"
* #HI  ^designation[+].language = #de-DE
* #HI  ^designation[=].use = $csSct#900000000000013009
* #HI  ^designation[=].value = "KV"
* #HI  ^designation[+].language = #en-UK
* #HI  ^designation[=].use = $csSct#900000000000003001
* #HI  ^designation[=].value = "from/to health insurances"
* #PI "PI"
* #PI  ^designation[0].language = #de-DE
* #PI  ^designation[=].use = $csSct#900000000000003001
* #PI  ^designation[=].value = "von/an Rentenversicherungen"
* #PI  ^designation[+].language = #de-DE
* #PI  ^designation[=].use = $csSct#900000000000013009
* #PI  ^designation[=].value = "RV"
* #PI  ^designation[+].language = #en-UK
* #PI  ^designation[=].use = $csSct#900000000000003001
* #PI  ^designation[=].value = "from/to pension insurances"
* #results "results"
* #results  ^designation[0].language = #de-DE
* #results  ^designation[=].use = $csSct#900000000000003001
* #results  ^designation[=].value = "Mitteilung von Forschungsergebnissen"
* #results  ^designation[+].language = #de-DE
* #results  ^designation[=].use = $csSct#900000000000013009
* #results  ^designation[=].value = "Ergebnisse"
* #results  ^designation[+].language = #en-UK
* #results  ^designation[=].use = $csSct#900000000000003001
* #results  ^designation[=].value = "communication of research results"
* #significant "significant"
* #significant  ^designation[0].language = #de-DE
* #significant  ^designation[=].use = $csSct#900000000000003001
* #significant  ^designation[=].value = "[PURPOSE] mit erheblicher Bedeutung"
* #significant  ^designation[+].language = #de-DE
* #significant  ^designation[=].use = $csSct#900000000000013009
* #significant  ^designation[=].value = "Erhebliche_Bedeutung"
* #significant  ^designation[+].language = #en-UK
* #significant  ^designation[=].use = $csSct#900000000000003001
* #significant  ^designation[=].value = "[PURPOSE] with considerable significance"
* #quality_assurance "quality_assurance "
* #quality_assurance  ^designation[0].language = #de-DE
* #quality_assurance  ^designation[=].use = $csSct#900000000000003001
* #quality_assurance  ^designation[=].value = "zu Zwecken der Qualitätssicherung"
* #quality_assurance  ^designation[+].language = #de-DE
* #quality_assurance  ^designation[=].use = $csSct#900000000000013009
* #quality_assurance  ^designation[=].value = "qualitaetssicherung"
* #quality_assurance  ^designation[+].language = #en-UK
* #quality_assurance  ^designation[=].use = $csSct#900000000000003001
* #quality_assurance  ^designation[=].value = "for quality assurance purposes"
* #scientific "scientific"
* #scientific  ^designation[0].language = #de-DE
* #scientific  ^designation[=].use = $csSct#900000000000003001
* #scientific  ^designation[=].value = "im wissenschaftlichen Kontext"
* #scientific  ^designation[+].language = #de-DE
* #scientific  ^designation[=].use = $csSct#900000000000013009
* #scientific  ^designation[=].value = "wissenschaftlich"
* #scientific  ^designation[+].language = #en-UK
* #scientific  ^designation[=].use = $csSct#900000000000003001
* #scientific  ^designation[=].value = "in a scientific context"
* #highly_specific "highly_specific"
* #highly_specific  ^designation[0].language = #de-DE
* #highly_specific  ^designation[=].use = $csSct#900000000000003001
* #highly_specific  ^designation[=].value = "in einer relevanten und hochspezifischen Weise"
* #highly_specific  ^designation[+].language = #de-DE
* #highly_specific  ^designation[=].use = $csSct#900000000000013009
* #highly_specific  ^designation[=].value = "hochspezifisch"
* #highly_specific  ^designation[+].language = #en-UK
* #highly_specific  ^designation[=].use = $csSct#900000000000003001
* #highly_specific  ^designation[=].value = "in a relevant highly specific way"
* #legally_based_registry "legally_based_registry"
* #legally_based_registry  ^designation[0].language = #de-DE
* #legally_based_registry  ^designation[=].use = $csSct#900000000000003001
* #legally_based_registry  ^designation[=].value = "im Rahmen eines Registers auf gesetzlicher Grundlage"
* #legally_based_registry  ^designation[+].language = #de-DE
* #legally_based_registry  ^designation[=].use = $csSct#900000000000013009
* #legally_based_registry  ^designation[=].value = "gesetzliches_register"
* #legally_based_registry  ^designation[+].language = #en-UK
* #legally_based_registry  ^designation[=].use = $csSct#900000000000003001
* #legally_based_registry  ^designation[=].value = "within the framework of a register on a legal basis"
* #laboratory "laboratory"
* #laboratory  ^designation[0].language = #de-DE
* #laboratory  ^designation[=].use = $csSct#900000000000003001
* #laboratory  ^designation[=].value = "in / aus einem Labor"
* #laboratory  ^designation[+].language = #de-DE
* #laboratory  ^designation[=].use = $csSct#900000000000013009
* #laboratory  ^designation[=].value = "Labor"
* #laboratory  ^designation[+].language = #en-UK
* #laboratory  ^designation[=].use = $csSct#900000000000003001
* #laboratory  ^designation[=].value = "in a / of a laboratory"
* #genetic "genetic"
* #genetic  ^designation[0].language = #de-DE
* #genetic  ^designation[=].use = $csSct#900000000000003001
* #genetic  ^designation[=].value = "genetisch"
* #genetic  ^designation[+].language = #de-DE
* #genetic  ^designation[=].use = $csSct#900000000000013009
* #genetic  ^designation[=].value = "genetisch"
* #genetic  ^designation[+].language = #en-UK
* #genetic  ^designation[=].use = $csSct#900000000000003001
* #genetic  ^designation[=].value = "genetic"
* #authority "authority"
* #authority  ^designation[0].language = #de-DE
* #authority  ^designation[=].use = $csSct#900000000000003001
* #authority  ^designation[=].value = "in einer /von einer / durch eine Behörde"
* #authority  ^designation[+].language = #de-DE
* #authority  ^designation[=].use = $csSct#900000000000013009
* #authority  ^designation[=].value = "behörde"
* #authority  ^designation[+].language = #en-UK
* #authority  ^designation[=].use = $csSct#900000000000003001
* #authority  ^designation[=].value = "in / from / by an authority"