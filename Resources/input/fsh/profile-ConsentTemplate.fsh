Profile: ConsentTemplate
Parent: $prEinwTemplateFrame
Id: ConsentTemplate
Title: "Consent Template"
Description: "Einwilligungsvorlage auf Basis des ConsentManagementTemplateFrame erweitertet um ausgewählte gICS Eigenschaften"
* insert meta-profile
* ^status = #active
* extension contains
    Created named created 0..1 MS and
    ExternalProperty named externalProperty 0..* MS N and
    ExpirationProperty named expirationProperty 0..* MS N and
    QuestionnaireLabel named label 0..* MS N and
    VersionLabel named versionLabel 0..1 MS N
* extension[versionLabel].value[x] MS N
* useContext.value[x] only Reference($prEinwResearchStudy)
* useContext.value[x] N
* item.extension[subQuestionnaire].value[x] only Reference($prEinwTemplateModule or ConsentModule)
* item.extension[subQuestionnaire].value[x] N
* item.extension contains
    ExternalProperty named externalProperty 0..* MS N and
    ExpirationProperty named expirationProperty 0..* MS N and
    FreeTextDefAttributes named freeTextDefAttributes 0..1 MS N and
    Position named position 0..1 MS N
* item.answerOption.value[x] MS N
* item.answerOption.initialSelected MS N
* item.initial.value[x] MS N


Instance: ConsentTemplate-example-1
InstanceOf: ConsentTemplate
Usage: #example
* language = #DE
* meta.extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Created"
* meta.extension[=].valueInstant = "2020-01-02T04:05:06+01:00"
* extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/QuestionnaireLabel"
* extension[=].valueString = "Patienteneinwilligung MII 1.6.f inkl Z-Modul (TMF V0.8)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.11 "Consent Witness Signature"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "miiAnswerCodeSystem"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.2"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "mii_answer_oid_no"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.2.2"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "study"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "mii"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "miiAnswerValueSet"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "https://www.medizininformatik-initiative.de/fhir/ValueSet/MiiConsentAnswerValueSet"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "miiAnswerValueSetId"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.11.30"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "mii_answer_oid_unknown"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.2.3"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "miiPolicyCodesystem"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.3"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "optional"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "false"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "orderNr"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "1"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "mii_answer_oid_yes"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "2.16.840.1.113883.3.1937.777.24.5.2.1"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExternalProperty"
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "VALIDITY_PERIOD"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "P30Y"
* extension[=].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ExpirationProperty"
* url = "https://ths-greifswald.de/fhir/gics/ConsentTemplate/MII/Patienteneinwilligung+MII|1.6.f"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MII;Patienteneinwilligung MII;1.6.f"
* version = "1.6.f"
* name = "Patienteneinwilligung MII"
* title = "<h1>Einwilligungserklärung</h1>"
* status = #active
* date = "2021-05-19T17:49:12+02:00"
* useContext.code = $QuestionnaireComponents#TemplateFrame
* useContext.valueReference = Reference(ResearchStudy/593d66f3-3654-4e8a-9524-3bcd78a363bb)
* purpose = "Version 1.6f der MII Vorlage, Stand: 31.03.2021, allgemeine Version (PatDat,KKDat,BioMat,ZModul) mit Platzhaltern  und den OIDs der ArtDecor Version von Mai 2021 gemäß ArtDecor (MiiConsentPolicyValueSet, MiiConsentAnswerValueSet)"
* code = $loinc#59284-0
* item[0].linkId = "header"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<h2 style=\"text-align: justify;\">Einwilligung in die Nutzung von Patientendaten, [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke</h2>"
* item[=].text = "Einwilligung in die Nutzung von Patientendaten, [falls zutreffend: Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke"
* item[=].type = #display
* item[=].extension[position].valueInteger = 0
* item[+].linkId = "PATDAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><strong>1.1 </strong>die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse <strong>www.medizininformatik-initiative.de/datennutzung</strong> kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>1.2 </strong>die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>1.3 </strong>die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.</strong></div>"
* item[=].text = "1.1 die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse www.medizininformatik-initiative.de/datennutzung kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).1.2 die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.1.3 die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe."
* item[=].type = #display
* item[=].extension[subQuestionnaire].valueReference = Reference(Questionnaire/3386fb6-d2046-42bc-b6b0-9ac181c0d490)
* item[=].extension[position].valueInteger = 1
* item[+].linkId = "PATDAT_erheben_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[=].extension[position].valueInteger = 2
* item[+].linkId = "KKDAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [<span style=\"background-color: rgb(240, 102, 102);\">zuständige Stelle</span>] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [<span style=\"background-color: rgb(240, 102, 102);\">Name der behandelnden Einrichtung</span>] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:</div><div><br></div>"
* item[=].text = "Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [zuständige Stelle] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [Name der behandelnden Einrichtung] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:"
* item[=].type = #display
* item[=].extension[subQuestionnaire].valueReference = Reference(Questionnaire/b6d309e-f3f7e-48b2-b742-b15146aba355)
* item[=].extension[position].valueInteger = 3
* item[+].linkId = "KKDAT_retrospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[=].extension[subQuestionnaire].valueReference = Reference(Questionnaire/6ab9bba-5cf5f-48ee-b78c-99fe979aaf9c)
* item[=].extension[position].valueInteger = 4
* item[+].linkId = "KKDAT_prospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[=].extension[position].valueInteger = 5
* item[+].linkId = "BIOMAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><strong>3.1 </strong>die Lagerung und Verarbeitung meiner Biomaterialien in [<span style=\"background-color: rgb(240, 102, 102);\">der/dem Träger der Biobank(en) bzw. Archive</span>] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>3.2 </strong>die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.</strong></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>3.3 Das Eigentum an meinen Biomaterialien übertrage ich an [</strong><strong style=\"background-color: rgb(240, 102, 102);\">den/die/das Träger der Biobank(en) bzw. Archive</strong><strong>]</strong>. Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation).</div><div><br></div>"
* item[=].text = "3.1 die Lagerung und Verarbeitung meiner Biomaterialien in [der/dem Träger der Biobank(en) bzw. Archive] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).3.2 die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.3.3 Das Eigentum an meinen Biomaterialien übertrage ich an [den/die/das Träger der Biobank(en) bzw. Archive]. Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation)."
* item[=].type = #display
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/b5a3007-4cded-461c-8bd5-383b97b945b7)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 6
* item[=].linkId = "BIOMAT_erheben_lagern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/5b999a9-6958d-4692-97d1-2c135af7fa33)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 7
* item[=].linkId = "BIOMAT_Zusatzentnahme|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension.url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension.valueInteger = 8
* item[=].linkId = "Rekontaktierung_Intro|1.6"
* item[=].type = #display
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/0cc1f7e-7a970-4256-9249-7c4eaa51d0b3)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 9
* item[=].linkId = "Rekontaktierung_Ergaenzungen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/118fcfb-3ea77-4ad2-aa19-aa3486ba1d4b)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 10
* item[=].linkId = "Rekontaktierung_Zusatzbefund|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/c568d6f-acd4e-473e-a44e-4ebda1e1e443)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 11
* item[=].linkId = "Z1_GECCO83_Nutzung_NUM_CODEX|1.0"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension[=].valueReference = Reference(Questionnaire/2dc6277-98a8f-4e91-9a61-888827e511f4)
* item[=].extension[+].url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension[=].valueInteger = 12
* item[=].linkId = "Z1_GECCO83_Weitergabe_NUM_CODEX_EU_DSGVO_nonkonform|1.0"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension.url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension.valueInteger = 13
* item[=].linkId = "Geltungsdauer|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Meine Einwilligung in die Erhebung von Patientendaten [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: und in die Gewinnung von Biomaterialien] bei Aufenthalten <span style=\"background-color: rgb(240, 102, 102);\">[in der/im Name der behandelnden Einrichtung</span>] gilt für einen <strong>Zeitraum von fünf Jahren</strong> ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: und gewonnenen Biomaterialien] bleibt über diesen Zeitraum hinaus zulässig (Punkt 5 der Patienteninformation). </div>"
* item[=].text = "Meine Einwilligung in die Erhebung von Patientendaten [falls zutreffend: und in die Gewinnung von Biomaterialien] bei Aufenthalten [in der/im Name der behandelnden Einrichtung] gilt für einen Zeitraum von fünf Jahren ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten [falls zutreffend: und gewonnenen Biomaterialien] bleibt über diesen Zeitraum hinaus zulässig (Punkt 5 der Patienteninformation). "
* item[=].type = #display
* item[+].extension.url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Position"
* item[=].extension.valueInteger = 14
* item[=].linkId = "Widerrufsrecht|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Meine Einwilligung ist <strong>freiwillig</strong>!</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei <span style=\"background-color: rgb(240, 102, 102);\">[der/dem Name der behandelnden Einrichtung]</span> vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Beim Widerruf werden [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten <span style=\"background-color: rgb(240, 102, 102);\">[falls zutreffend</span>: vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>Ich wurde über die Nutzung meiner Patientendaten [</strong><strong style=\"background-color: rgb(240, 102, 102);\">falls zutreffend:</strong><strong>, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.</strong></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde.</strong></div>"
* item[=].text = "Meine Einwilligung ist freiwillig!Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei [der/dem Name der behandelnden Einrichtung] vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen.&nbsp;Beim Widerruf werden [falls zutreffend: die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten [falls zutreffend: vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).Ich wurde über die Nutzung meiner Patientendaten [falls zutreffend:, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde."
* item[=].type = #display
* item[+].linkId = "footer"
* item[=].type = #display
