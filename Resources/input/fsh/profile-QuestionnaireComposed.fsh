Instance: QuestionnaireComposed-example-1
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2021-05-19T17:49:12.000+02:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed"
* language = #DE
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.11 "Consent Witness Signature"
* url = "https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.f"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MII;Patienteneinwilligung MII;1.6.f"
* version = "1.6.f"
* name = "Patienteneinwilligung MII"
* title = "<h1>Einwilligungserklärung</h1>"
* derivedFrom = "https://ths-greifswald.de/fhir/gics/TemplateFrame/MII/Patienteneinwilligung+MII|1.6.f"
* status = #active
* useContext.code = $QuestionnaireComponents#QuestionnaireComposed
* useContext.valueReference = Reference(ResearchStudy/593d66f3-3654-4e8a-9524-3bcd78a363bb)
* purpose = "Version 1.6f der MII Vorlage, Stand: 31.03.2021, allgemeine Version (PatDat,KKDat,BioMat,ZModul) mit Platzhaltern  und den OIDs der ArtDecor Version von Mai 2021 gemäß ArtDecor (MiiConsentPolicyValueSet, MiiConsentAnswerValueSet)"
* code = $loinc#59284-0
* item[0].linkId = "header"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<h2 style=\"text-align: justify;\">Einwilligung in die Nutzung von Patientendaten, [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke</h2>"
* item[=].text = "Einwilligung in die Nutzung von Patientendaten, [falls zutreffend: Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke"
* item[=].type = #display
* item[+].linkId = "PATDAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><strong>1.1 </strong>die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse <strong>www.medizininformatik-initiative.de/datennutzung</strong> kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>1.2 </strong>die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>1.3 </strong>die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.</strong></div>"
* item[=].text = "1.1 die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse www.medizininformatik-initiative.de/datennutzung kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).1.2 die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.1.3 die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe."
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/3386fb6-d2046-42bc-b6b0-9ac181c0d490)
* item[=].linkId = "PATDAT_erheben_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].linkId = "KKDAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [<span style=\"background-color: rgb(240, 102, 102);\">zuständige Stelle</span>] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [<span style=\"background-color: rgb(240, 102, 102);\">Name der behandelnden Einrichtung</span>] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:</div><div><br></div>"
* item[=].text = "Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [zuständige Stelle] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [Name der behandelnden Einrichtung] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:"
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/b6d309e-f3f7e-48b2-b742-b15146aba355)
* item[=].linkId = "KKDAT_retrospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/6ab9bba-5cf5f-48ee-b78c-99fe979aaf9c)
* item[=].linkId = "KKDAT_prospektiv_uebertragen_speichern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].linkId = "BIOMAT_Intro|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><strong>3.1 </strong>die Lagerung und Verarbeitung meiner Biomaterialien in [<span style=\"background-color: rgb(240, 102, 102);\">der/dem Träger der Biobank(en) bzw. Archive</span>] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>3.2 </strong>die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.</strong></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>3.3 Das Eigentum an meinen Biomaterialien übertrage ich an [</strong><strong style=\"background-color: rgb(240, 102, 102);\">den/die/das Träger der Biobank(en) bzw. Archive</strong><strong>]</strong>. Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation).</div><div><br></div>"
* item[=].text = "3.1 die Lagerung und Verarbeitung meiner Biomaterialien in [der/dem Träger der Biobank(en) bzw. Archive] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).3.2 die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.3.3 Das Eigentum an meinen Biomaterialien übertrage ich an [den/die/das Träger der Biobank(en) bzw. Archive]. Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation)."
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/b5a3007-4cded-461c-8bd5-383b97b945b7)
* item[=].linkId = "BIOMAT_erheben_lagern_nutzen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/5b999a9-6958d-4692-97d1-2c135af7fa33)
* item[=].linkId = "BIOMAT_Zusatzentnahme|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].linkId = "Rekontaktierung_Intro|1.6"
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/0cc1f7e-7a970-4256-9249-7c4eaa51d0b3)
* item[=].linkId = "Rekontaktierung_Ergaenzungen|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/118fcfb-3ea77-4ad2-aa19-aa3486ba1d4b)
* item[=].linkId = "Rekontaktierung_Zusatzbefund|1.6"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/c568d6f-acd4e-473e-a44e-4ebda1e1e443)
* item[=].linkId = "Z1_GECCO83_Nutzung_NUM_CODEX|1.0"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/2dc6277-98a8f-4e91-9a61-888827e511f4)
* item[=].linkId = "Z1_GECCO83_Weitergabe_NUM_CODEX_EU_DSGVO_nonkonform|1.0"
* item[=].type = #choice
* item[=].required = false
* item[=].answerValueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusConsentShortValues"
* item[+].linkId = "Geltungsdauer|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Meine Einwilligung in die Erhebung von Patientendaten [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: und in die Gewinnung von Biomaterialien] bei Aufenthalten <span style=\"background-color: rgb(240, 102, 102);\">[in der/im Name der behandelnden Einrichtung</span>] gilt für einen <strong>Zeitraum von fünf Jahren</strong> ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: und gewonnenen Biomaterialien] bleibt über diesen Zeitraum hinaus zulässig (Punkt 5 der Patienteninformation). </div>"
* item[=].text = "Meine Einwilligung in die Erhebung von Patientendaten [falls zutreffend: und in die Gewinnung von Biomaterialien] bei Aufenthalten [in der/im Name der behandelnden Einrichtung] gilt für einen Zeitraum von fünf Jahren ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten [falls zutreffend: und gewonnenen Biomaterialien] bleibt über diesen Zeitraum hinaus zulässig (Punkt 5 der Patienteninformation). "
* item[=].type = #display
* item[+].linkId = "Widerrufsrecht|1.6"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\">Meine Einwilligung ist <strong>freiwillig</strong>!</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei <span style=\"background-color: rgb(240, 102, 102);\">[der/dem Name der behandelnden Einrichtung]</span> vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Beim Widerruf werden [<span style=\"background-color: rgb(240, 102, 102);\">falls zutreffend</span>: die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten <span style=\"background-color: rgb(240, 102, 102);\">[falls zutreffend</span>: vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>Ich wurde über die Nutzung meiner Patientendaten [</strong><strong style=\"background-color: rgb(240, 102, 102);\">falls zutreffend:</strong><strong>, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.</strong></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde.</strong></div>"
* item[=].text = "Meine Einwilligung ist freiwillig!Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei [der/dem Name der behandelnden Einrichtung] vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen.&nbsp;Beim Widerruf werden [falls zutreffend: die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten [falls zutreffend: vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).Ich wurde über die Nutzung meiner Patientendaten [falls zutreffend:, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde."
* item[=].type = #display
* item[+].linkId = "footer"
* item[=].type = #display

Instance: QuestionnaireComposed-example-2
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2021-01-07T20:35:13.458+01:00"
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed"
* language = #DE
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* extension[+].url = "http://fhir.de/ConsentManagement/StructureDefinition/SourceDocument"
* extension[=].valueAttachment.contentType = #application/pdf
* extension[=].valueAttachment.data = "QmVpc3BpZWwgY29kZSBmb3IgZmhpcg=="
* url = "https://ths-greifswald.de/fhir/gics/MII%7CPatienteneinwilligung+MII+%5Bmit+PDF%5D%7C1.6.d"
* identifier.system = "https://ths-greifswald.de/fhir/gics/"
* identifier.value = "MII|Patienteneinwilligung MII [mit PDF]|1.6.d"
* version = "1.6.d"
* name = "Patienteneinwilligung MII [mit PDF]"
* title = "<h1>Einwilligungserklärung</h1>"
* derivedFrom = "https://ths-greifswald.de/fhir/gics/MII%7CPatienteneinwilligung+MII+%5Bmit+PDF%5D%7C1.6.d"
* status = #draft
* useContext.code = $QuestionnaireComponents#QuestionnaireComposed
* useContext.valueReference = Reference(ResearchStudy/MII)
* purpose = "Version 1.6d der MII Vorlage, Stand: 27.04.2020, allgemeine Version (PatDat,KKDat,BioMat) mit Platzhaltern  und den OIDs der ArtDecor Version von Dez 2020 gemäß http://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.7"
* code = $loinc#59284-0
* item[0].linkId = "header"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<h3 style=\"text-align: justify;\"><span style=\"color: rgb(35, 31, 32);\">Einwilligung in die Nutzung von Patientendaten, [</span><span style=\"color: rgb(237, 33, 36);\">falls zutreffend: </span><span style=\"color: rgb(35, 31, 32);\">Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke</span></h3>"
* item[=].text = "Einwilligung in die Nutzung von Patientendaten, [falls zutreffend: Krankenkassendaten und Biomaterialien (Gewebe und Körperflüssigkeiten)] für medizinische Forschungszwecke"
* item[=].type = #display
* item[+].linkId = "PATDAT_Intro|1.5"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>1.1 </strong>die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse <strong>http://www.medizininformatik-initiative.de/datennutzung</strong> kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\"><strong>1.2</strong>&nbsp;die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\"><strong>1.3 </strong>die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.</strong></div><div style=\"text-align: justify;\"><br></div>"
* item[=].text = "1.1 die Verarbeitung und Nutzung meiner Patientendaten für die medizinische Forschung ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung). Unter der Adresse http://www.medizininformatik-initiative.de/datennutzung kann ich mich für einen E-Mail-Verteiler registrieren, der per E-Mail über alle neuen Studien, die mit den Patientendaten durchgeführt werden, vor deren Durchführung informiert (siehe Punkte 1.1, 1.2 und 1.3 der Patienteninformation).&nbsp;1.2&nbsp;die wissenschaftliche Analyse und Nutzung meiner codierten Patientendaten durch Dritte wie z.B. durch andere Universitäten/Institute/forschende Unternehmen; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. An einem etwaigen kommerziellen Nutzen aus der Forschung werde ich nicht beteiligt. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.&nbsp;1.3 die Möglichkeit einer Zusammenführung meiner Patientendaten mit Daten in Datenbanken anderer Forschungspartner. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe."
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/PATDAT_erheben_speichern_nutzen|1.5)
* item[=].linkId = "PATDAT_erheben_speichern_nutzen|1.5"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].linkId = "KKDAT_Intro|1.5"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [<span style=\"color: rgb(237, 33, 36);\">zuständige Stelle</span>] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [<span style=\"color: rgb(237, 33, 36);\">Name der behandelnden Einrichtung</span>] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:</div><div><br></div>"
* item[=].text = "Hiermit ermächtige ich meine Krankenkasse auf Anforderung durch [zuständige Stelle] Daten über von mir in Anspruch genommene ärztliche Leistungen in der ambulanten Versorgung und bei stationären Aufenthalten, über verordnete Heil- und Hilfsmittel sowie Arzneimittel und Angaben zum Bereich Pflege an [Name der behandelnden Einrichtung] sowie in der Patienteninformation beschrieben, zu übermitteln, und zwar:"
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/KKDAT_retrospektiv_uebertragen_speichern_nutzen|1.5)
* item[=].linkId = "KKDAT_retrospektiv_uebertragen_speichern_nutzen|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#UNKNOWN "UNKNOWN"
* item[=].answerOption[+].valueCoding = $ConsentStatus#NOT_ASKED "NOT ASKED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#NOT_CHOSEN "NOT CHOSEN"
* item[=].answerOption[+].valueCoding = $ConsentStatus#WITHDRAWN "WITHDRAWN"
* item[=].answerOption[+].valueCoding = $ConsentStatus#INVALIDATED "INVALIDATED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#REFUSED "REFUSED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#EXPIRED "EXPIRED"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/KKDAT_prospektiv_uebertragen_speichern_nutzen|1.5)
* item[=].linkId = "KKDAT_prospektiv_uebertragen_speichern_nutzen|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].linkId = "BIOMAT_Intro|1.5"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><strong>3.1 </strong>die Lagerung und Verarbeitung meiner Biomaterialien in [<em style=\"color: red;\">der/dem Träger der Biobank(en) bzw. Archive</em>] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\"><strong>3.2 </strong>die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\">Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. <strong>Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe</strong>.</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\"><strong>3.3 Das Eigentum an meinen Biomaterialien übertrage ich an </strong>[<strong style=\"color: red;\"><em>den/die/das Träger der Biobank(en) bzw. Archive</em></strong><span style=\"color: black;\">].</span>&nbsp;Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation).</div><div style=\"text-align: justify;\"><br></div>"
* item[=].text = "3.1 die Lagerung und Verarbeitung meiner Biomaterialien in [der/dem Träger der Biobank(en) bzw. Archive] für medizinische Forschungszwecke ausschließlich wie in der Patienteninformation beschrieben und mit getrennter Verwaltung des Namens und anderer direkt identifizierender Daten (Codierung, siehe Punkte 3.1 bis 3.3 der Patienteninformation).&nbsp;3.2 die wissenschaftliche Analyse meiner codierten Biomaterialien sowie deren Weitergabe und Nutzung durch Dritte z.B. Universitäten/Institute/forschende Unternehmen für genauer bestimmte und beantragte medizinische Forschungszwecke; dies kann auch eine Weitergabe für Forschungsprojekte im Ausland umfassen, wenn in diesen europäisches Datenschutzrecht gilt oder die Europäische Kommission ein angemessenes Datenschutzniveau bestätigt hat. Vor einer Weitergabe an Forscher außerhalb meiner behandelnden Einrichtung erfolgt zudem eine weitere Ersetzung des internen Kennzeichens durch eine neue Zeichenkombination.&nbsp;Ebenso willige ich in die Möglichkeit einer Zusammenführung von Analyse-Daten meiner Biomaterialien mit Analyse-Daten in Datenbanken anderer Forschungspartner ein. Voraussetzung ist, dass ich dieser Nutzung bei den entsprechenden Forschungspartnern auch zugestimmt habe.&nbsp;3.3 Das Eigentum an meinen Biomaterialien übertrage ich an [den/die/das Träger der Biobank(en) bzw. Archive].&nbsp;Mein Recht, über die Verarbeitung meiner dem Biomaterial zu entnehmenden personenbezogenen Daten selbst zu bestimmen, bleibt von der Eigentumsübertragung unberührt (siehe Punkt 3.3 der Patienteninformation)."
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/BIOMAT_erheben_lagern_nutzen|1.5)
* item[=].linkId = "BIOMAT_erheben_lagern_nutzen|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/BIOMAT_Zusatzentnahme|1.5)
* item[=].linkId = "BIOMAT_Zusatzentnahme|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].linkId = "Rekontaktierung_Intro|1.5"
* item[=].type = #display
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/Rekontaktierung_Ergaenzungen|1.5)
* item[=].linkId = "Rekontaktierung_Ergaenzungen|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/SubQuestionnaire"
* item[=].extension.valueReference = Reference(Questionnaire/Rekontaktierung_Zusatzbefund|1.5)
* item[=].linkId = "Rekontaktierung_Zusatzbefund|1.5"
* item[=].type = #choice
* item[=].required = false
* item[=].answerOption[0].valueCoding = $ConsentStatus#ACCEPTED "ACCEPTED"
* item[=].answerOption[+].valueCoding = $ConsentStatus#DECLINED "DECLINED"
* item[+].linkId = "Geltungsdauer|1.5"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(35, 31, 32);\">Meine Einwilligung in die Erhebung von Patientendaten [</span><span style=\"color: rgb(237, 33, 36);\">falls zutreffend: </span><span style=\"color: rgb(35, 31, 32);\">und in die Gewinnung von Biomaterialien] bei Aufenthalten [</span><span style=\"color: rgb(237, 33, 36);\">in der/im Name der behandelnden Einrichtung</span><span style=\"color: rgb(35, 31, 32);\">] gilt für einen </span><strong style=\"color: rgb(35, 31, 32);\">Zeitraum von fünf Jahren</strong><span style=\"color: rgb(35, 31, 32);\"> ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten &nbsp;[</span><span style=\"color: rgb(237, 33, 36);\">falls &nbsp;zutreffend: &nbsp;</span><span style=\"color: rgb(35, 31, 32);\">und &nbsp;gewonnenen &nbsp;Biomaterialien] &nbsp;bleibt &nbsp;über &nbsp;diesen &nbsp;Zeitraum &nbsp;hinaus &nbsp;zulässig (Punkt 5 der Patienteninformation).</span></div><div style=\"text-align: justify;\"><br></div>"
* item[=].text = "Meine Einwilligung in die Erhebung von Patientendaten [falls zutreffend: und in die Gewinnung von Biomaterialien] bei Aufenthalten [in der/im Name der behandelnden Einrichtung] gilt für einen Zeitraum von fünf Jahren ab meiner Einwilligungserklärung. Sollte ich nach Ablauf von fünf Jahren wieder im [Universitätsklinikum] vorstellig werden, kann ich erneut meine Einwilligung erteilen. Die Nutzung der von mir erhobenen Daten &nbsp;[falls &nbsp;zutreffend: &nbsp;und &nbsp;gewonnenen &nbsp;Biomaterialien] &nbsp;bleibt &nbsp;über &nbsp;diesen &nbsp;Zeitraum &nbsp;hinaus &nbsp;zulässig (Punkt 5 der Patienteninformation)."
* item[=].type = #display
* item[+].linkId = "Widerrufsrecht|1.5"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(35, 31, 32);\">Meine Einwilligung ist </span><strong style=\"color: rgb(35, 31, 32);\">freiwillig!</strong></div><div>&nbsp;</div><div><span style=\"color: rgb(35, 31, 32);\">Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei [</span><span style=\"color: rgb(237, 33, 36);\">der/dem Name der behandelnden Einrichtung</span><span style=\"color: rgb(35, 31, 32);\">] vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen. </span></div><div>&nbsp;</div><div style=\"text-align: justify;\"><span style=\"color: rgb(35, 31, 32);\">Beim Widerruf werden [</span><span style=\"color: rgb(237, 33, 36);\">falls zutreffend: </span><span style=\"color: rgb(35, 31, 32);\">die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten [</span><span style=\"color: rgb(237, 33, 36);\">falls zutreffend: </span><span style=\"color: rgb(35, 31, 32);\">vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).</span></div><div>&nbsp;</div><div style=\"text-align: justify;\"><strong style=\"color: rgb(35, 31, 32);\">Ich wurde über die Nutzung meiner Patientendaten [</strong><strong style=\"color: rgb(237, 33, 36);\">falls zutreffend:</strong><strong style=\"color: rgb(35, 31, 32);\">, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.</strong></div><div style=\"text-align: justify;\"><strong>&nbsp;</strong></div><div style=\"text-align: justify;\"><strong style=\"color: rgb(35, 31, 32);\">Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde.</strong></div><div>&nbsp;</div>"
* item[=].text = "Meine Einwilligung ist freiwillig!&nbsp;Ich kann meine Einwilligung jederzeit ohne Angabe von Gründen bei [der/dem Name der behandelnden Einrichtung] vollständig oder in Teilen widerrufen, ohne dass mir irgendwelche Nachteile entstehen. &nbsp;Beim Widerruf werden [falls zutreffend: die für die Forschung verbliebenen Biomaterialien und] die auf Grundlage dieser Einwilligung gespeicherten Daten [falls zutreffend: vernichtet bzw.] gelöscht oder anonymisiert, sofern dies gesetzlich zulässig ist. Daten aus bereits durchgeführten Analysen können nicht mehr entfernt werden (Punkt 6 der Patienteninformation).&nbsp;Ich wurde über die Nutzung meiner Patientendaten [falls zutreffend:, Krankenkassendaten und Biomaterialien] sowie die damit verbundenen Risiken informiert und erteile im vorgenannten Rahmen meine Einwilligung. Ich hatte ausreichend Bedenkzeit und alle meine Fragen wurden zufriedenstellend beantwortet.&nbsp;Ich wurde darüber informiert, dass ich ein Exemplar der Patienteninformation und eine Kopie der unterschriebenen Einwilligungserklärung erhalten werde.&nbsp;"
* item[=].type = #display
