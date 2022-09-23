CodeSystem: ConsentPolicyAction
Id: ConsentPolicyActionCS
Description: "Erweiterbare Beschreibung der aus einer ConsentPolicy resultierenden zulässigen Tätigkeit (Was darf ich tun). "
* insert meta-profile
* ^purpose = "Zweite Achse 'Tätigkeit' des 'Semantic Consent Code (SCC)' zur Verwendung als Consent.provision.action"
* ^caseSensitive = true
* ^content = #complete
* #bereitstellen "bereitstellen"
* #bereitstellen ^designation.language = #de-DE
* #bereitstellen ^designation.value = "Weitergabe von [PERSPEKTIVE]"
* #uebertragen_eigentum "uebertragen_eigentum"
* #uebertragen_eigentum ^designation.language = #de-DE
* #uebertragen_eigentum ^designation.value = "Übertragung des Eigentums an [PERSPEKTIVE] vom Teilnehmer an den Verantwortlichen/Datenverarbeiter/Träger der Biobank"
* #einsehen "einsehen"
* #einsehen ^designation[0].language = #de-DE
* #einsehen ^designation[=].value = "Einsicht in [PERSPEKTIVE]"
* #einsehen ^designation[+].language = #en-UK
* #einsehen ^designation[=].value = "View i dontknowthat verb"
* #entnehmen "entnehmen"
* #entnehmen ^designation[0].language = #de-DE
* #entnehmen ^designation[+].value = "Entnahme von [PERSPEKTIVE]"
* #erheben "erheben"
* #erheben ^designation.language = #de-DE
* #erheben ^designation.value = "Erhebung neuer [PERSPEKTIVE]"
* #analysieren_genetisch "analysieren_genetisch"
* #analysieren_genetisch ^designation.language = #de-DE
* #analysieren_genetisch ^designation.value = "Gewinnung von genetischen Daten aus [PERSPEKTIVE]"
* #informieren "informieren"
* #informieren ^designation.language = #de-DE
* #informieren ^designation.value = "Information"
* #lagern "lagern"
* #lagern ^designation.language = #de-DE
* #lagern ^designation.value = "Lagerung von [PERSPEKTIVE]"
* #lagern_verarbeiten "lagern_verarbeiten"
* #lagern_verarbeiten ^designation.language = #de-DE
* #lagern_verarbeiten ^designation.value = "Lagerung und Verarbeitung von [PERSPEKTIVE]"
* #rekontaktieren "rekontaktieren"
* #rekontaktieren ^designation.language = #de-DE
* #rekontaktieren ^designation.value = "Rekontaktierung des Teilnehmers"
* #speichern "speichern"
* #speichern ^designation.language = #de-DE
* #speichern ^designation.value = "Langfristige Speicherung von [PERSPEKTIVE]"
* #speichern_verarbeiten "speichern_verarbeiten"
* #speichern_verarbeiten ^designation.language = #de-DE
* #speichern_verarbeiten ^designation.value = "Langfristige Speicherung und Verarbeitung von [PERSPEKTIVE]"
* #wissenschaftlich_nutzen "wissenschaftlich_nutzen"
* #wissenschaftlich_nutzen ^designation.language = #de-DE
* #wissenschaftlich_nutzen ^designation.value = "Bereitstellung von [PERSPEKTIVE] für wissenschaftliche Nutzung / Analysen / zu Auswertezwecken"
* #zusammenfuehren "zusammenfuehren"
* #zusammenfuehren ^designation.language = #de-DE
* #zusammenfuehren ^designation.value = "Zusammenführung von [PERSPEKTIVE]"
