ValueSet: Policy
Id: PolicyVS
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/Policy"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.timestamp = "2021-04-21T14:45:00+00:00"
* ^expansion.total = 63
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_erheben
* ^expansion.contains[=].display = "Erfassung neuer identifizierender Daten (IDAT)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_erheben_Institutionen
* ^expansion.contains[=].display = "Erfassung identifizierender Daten durch Anfrage bei Melderegister oder Krankenversicherung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_speichern_verarbeiten
* ^expansion.contains[=].display = "Speicherung und Verarbeitung identifizierender Daten (IDAT) in der verantwortlichen Stelle"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_bereitstellen_Arzt
* ^expansion.contains[=].display = "Weitergabe von identifizierenden Daten an beliebigen Arzt (inkl. Hausarzt)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_bereitstellen_Hausarzt
* ^expansion.contains[=].display = "Weitergabe von identifizierenden Daten an Hausarzt"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_bereitstellen_Institutionen
* ^expansion.contains[=].display = "Weitergabe von identifizierenden Daten an Melderegeister oder Krankenversicherung zum Zweck der Datenergänzung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_bereitstellen_Institutionen_Tod
* ^expansion.contains[=].display = "Weitergabe von identifizierenden Daten an Melderegeister oder Krankenversicherung zum Zweck der Datenergänzung im Falle des Todes"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_bereitstellen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Herausgabe identifizierender Daten (IDAT) an verantwortliche Stelle zur weiteren Verarbeitung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_Einsicht_Monitoring
* ^expansion.contains[=].display = "Einsicht in identifizierende Daten im Rahmen des Monitoring"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IDAT_zusammenfuehren_Dritte
* ^expansion.contains[=].display = "Zusammenführung identifizierender Daten (IDAT) mit Dritten Forschungspartnern "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben
* ^expansion.contains[=].display = "Erfassung medizinischer Daten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben_Arzt
* ^expansion.contains[=].display = "Erfassung medizinischer Daten durch Anfrage bei externem Arzt (inkl. Hausarzt)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben_Hausarzt
* ^expansion.contains[=].display = "Erfassung medizinischer Daten durch Anfrage beim Hausarzt"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben_Institutionen
* ^expansion.contains[=].display = "Erfassung medizinischer Daten durch Anfrage bei Institutionen, wie z.B. Gesundheitsamt, Kassenärztliche Vereinigung, Melderegister oder Krankenversicherung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben_Krankenunterlagen
* ^expansion.contains[=].display = "Erfassung medizinischer Daten durch Übertrag aus Krankenunterlagen"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_erheben_Tod
* ^expansion.contains[=].display = "Erfassung von medizinischen Daten zum Zwecke der Datenergänzung im Falle des Todes"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_speichern_verarbeiten
* ^expansion.contains[=].display = "Speicherung_Verarbeitung von medizinischen Daten innerhalb der verantwortlichen Stelle (MDAT) "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Bereitstellung medizinischer Daten (MDAT) für wissenschaftliche Nutzung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_studienintern
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten innerhalb der Studie zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_intern
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten innerhalb des Projektes (bspw. DZHK) zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten an externe Wissenschaftler in GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_EU_DSGVO_nonkonform
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten an externe Wissenschaftler in nicht GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_pharma
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten an eine am Sponsoring beteiligte Pharmafirma"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_bereitstellen_CRO
* ^expansion.contains[=].display = "Weitergabe von medizinischen Daten an eine CRO"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_zusammenfuehren_Dritte
* ^expansion.contains[=].display = "Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_Einsicht_Monitoring
* ^expansion.contains[=].display = "Einsicht in medizinische Daten im Rahmen des Monitoring"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_GECCO83_bereitstellen_NUM_CODEX
* ^expansion.contains[=].display = "Medizinische Daten des GECCO83 Datensatz für wiss. Nutzung in NUM-CODEX Plattform bereitstellen"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_GECCO83_speichern_verarbeiten_NUM_CODEX
* ^expansion.contains[=].display = "Medizinische Daten des GECCO83 Datensatz in NUM-CODEX Plattform speichern und verarbeiten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_GECCO83_bereitstellen_NUM_CODEX_EU_DSGVO_nonkonform
* ^expansion.contains[=].display = "Medizinische Daten des GECCO83 Datensatz an Länder ohne EU Datenschutzniveau weitergeben"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_erheben
* ^expansion.contains[=].display = "Erfassung von Bildern und Bilddaten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_speichern_verarbeiten
* ^expansion.contains[=].display = "Langfristiges Speichern und Verarbeiten von Bildern und Bilddaten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_bereitstellen_studienintern
* ^expansion.contains[=].display = "Weitergabe von Bildern und Bilddaten innerhalb der Studie zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_bereitstellen_intern
* ^expansion.contains[=].display = "Weitergabe von Bildern und Bilddaten innerhalb des Projektes (bspw. DZHK) zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_bereitstellen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Weitergabe von Bildern und Bilddaten an externe Wissenschaftler in GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_bereitstellen_EU_DSGVO_nonkonform
* ^expansion.contains[=].display = "Weitergabe von Bildern und Bilddaten an externe Wissenschaftler in nicht GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #IMGDAT_Einsicht_Monitoring
* ^expansion.contains[=].display = "Einsicht in Bilder und Bilddaten im Rahmen des Monitoring"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_erheben
* ^expansion.contains[=].display = "Gewinnung und/oder Entnahme von Biomaterialien und medizinischen Proben"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_erheben_studienintern
* ^expansion.contains[=].display = "Gewinnung von dem Studienbiomaterial zugeordneten medizinischen Proben ohne Veränderung"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_lagern_verarbeiten_studienintern
* ^expansion.contains[=].display = "Langfristiges Ablegen von dem Studienbiomaterial zugeordneten medizinischen Proben"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_lagern_verarbeiten
* ^expansion.contains[=].display = "Lagerung und Verarbeitung von Biomaterialien innerhalb der verantwortlichen Stelle (BIOMAT) "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_bereitstellen_studienintern
* ^expansion.contains[=].display = "Weitergabe von medizinischen Proben innerhalb der Studie zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_bereitstellen_intern
* ^expansion.contains[=].display = "Weitergabe von medizinischen Proben innerhalb des Projektes (bspw. DZHK) zu Auswertungszwecken"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_bereitstellen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Weitergabe von medizinischen Proben an externe Wissenschaftler in GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_bereitstellen_EU_DSGVO_nonkonform
* ^expansion.contains[=].display = "Weitergabe von medizinischen Proben an externe Wissenschaftler in nicht GPDR konformen Ländern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_Eigentum_uebertragen
* ^expansion.contains[=].display = "Eigentumsübertragung der BIOMAT an den Träger der Biobank "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_wissenschaftlich_nutzen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Bereitstellung Biomaterialien (BIOMAT) für wissenschaftliche Nutzung und Analysen"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_Analysedaten_zusammenfuehren_Dritte
* ^expansion.contains[=].display = "Zusammenführen von auf Biomaterialien (BIOMAT) basierenden Analysedaten mit Analysedaten Dritter "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_Zusatzmengen_entnehmen
* ^expansion.contains[=].display = "Entnahme zusätzlicher Mengen von Biomaterialien (BIOMAT)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_Einsicht_Monitoring
* ^expansion.contains[=].display = "Einsicht in medizinische Proben im Rahmen des Monitoring"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_Genanalyse
* ^expansion.contains[=].display = "Gewinnung von genetischen Daten aus Biomaterialien"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_uebertragen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv übertragen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_speichern_verarbeiten
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv speichern_verarbeiten in der verantwortlichen Stelle"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_wissenschaftlich_nutzen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv wissenschaftlich nutzen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_uebertragen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv übertragen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_speichern_verarbeiten
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv speichern verarbeiten in der verantwortlichen Stelle"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_wissenschaftlich_nutzen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv wissenschaftlich nutzen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Abfrage_Gesundheitszustand
* ^expansion.contains[=].display = "Rekontaktierung des Teilnehmers zur Abfrage des Gesundheitszustandes"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Verknuepfung_Datenbanken
* ^expansion.contains[=].display = "Rekontaktierung zur Verknüpfung von PatDat mit Info anderer Dbs "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_weitere_Studien
* ^expansion.contains[=].display = "Rekontaktierung bezüglich Information zu neuen Forschungsvorhaben oder Studien"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Zufallsbefund
* ^expansion.contains[=].display = "Rekontaktierung des Teilnehmers zur Mitteilung von Zufallsbefunden"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_weitere_Erhebung
* ^expansion.contains[=].display = "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Information_Hausarzt_Studienteilnahme
* ^expansion.contains[=].display = "Information des Hausarztes über die Teilnahme des Patienten an der Studie"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Information_Arzt_Studienteilnahme
* ^expansion.contains[=].display = "Information eines Facharztes des Patienten über die Teilnahme des Patienten an der Studie"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_uebertragen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv übertragen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_speichern_verarbeiten
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv speichern_verarbeiten in der verantwortlichen Stelle"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_retro_wissenschaftlich_nutzen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre retrospektiv wissenschaftlich nutzen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_uebertragen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv übertragen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_speichern_verarbeiten
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv speichern verarbeiten in der verantwortlichen Stelle"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #KKDAT_5J_pro_wissenschaftlich_nutzen
* ^expansion.contains[=].display = "Krankenkassendaten (KKDAT) für 5 Jahre prospektiv wissenschaftlich nutzen "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Abfrage_Gesundheitszustand
* ^expansion.contains[=].display = "Rekontaktierung des Teilnehmers zur Abfrage des Gesundheitszustandes"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Verknuepfung_Datenbanken
* ^expansion.contains[=].display = "Rekontaktierung zur Verknüpfung von PatDat mit Info anderer Dbs "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_weitere_Studien
* ^expansion.contains[=].display = "Rekontaktierung bezüglich Information zu neuen Forschungsvorhaben oder Studien"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_Zufallsbefund
* ^expansion.contains[=].display = "Rekontaktierung des Teilnehmers zur Mitteilung von Zufallsbefunden"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Rekontaktierung_weitere_Erhebung
* ^expansion.contains[=].display = "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Information_Hausarzt_Studienteilnahme
* ^expansion.contains[=].display = "Information des Hausarztes über die Teilnahme des Patienten an der Studie"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #Information_Arzt_Studienteilnahme
* ^expansion.contains[=].display = "Information eines Facharztes des Patienten über die Teilnahme des Patienten an der Studie"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_retro_speichern_verarbeiten
* ^expansion.contains[=].display = "Speicherung und retrospektive Verarbeitung von medizinischen Daten innerhalb der verantwortlichen Stelle (MDAT)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_retro_wissenschaftlich_nutzen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Retrospektive Bereitstellung medizinischer Daten (MDAT) für wissenschaftliche Nutzung (DSGVO konform)"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_retro_zusammenfuehren_Dritte
* ^expansion.contains[=].display = "Retrospektive Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #MDAT_wissenschaftlich_nutzen_EU_DSGVO_nonkonform
* ^expansion.contains[=].display = "Bereitstellung medizinische Daten (MDAT)  für wissenschaftliche Nutzung  und Analysen für Länder ohne EU DSGVO Niveau"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_retro_lagern_verarbeiten
* ^expansion.contains[=].display = "Retrospektive Lagerung und Verarbeitung von Biomaterialien innerhalb der verantwortlichen Stelle (BIOMAT) "
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/Policy"
* ^expansion.contains[=].code = #BIOMAT_retro_wissenschaftlich_nutzen_EU_DSGVO_konform
* ^expansion.contains[=].display = "Retrospektive Bereitstellung Biomaterialien (BIOMAT) für wissenschaftliche Nutzung und Analysen (DSGVO konform)"
* include codes from system Policy
