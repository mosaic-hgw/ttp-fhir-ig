CodeSystem: ConsentPolicyAction
Id: ConsentPolicyActionCS
Description: "Erweiterbare Beschreibung der aus einer ConsentPolicy resultierenden zulässigen Tätigkeit (Was darf ich tun)."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyAction"
* ^purpose = "Zweite Achse 'Tätigkeit' des 'Semantic Consent Code (SCC)' zur Verwendung als Consent.provision.action"
* ^caseSensitive = true
* ^content = #complete

* #provide "provide"
* #provide  ^designation[0].language = #de-DE
* #provide  ^designation[=].value = "Weitergabe von [PERSPEKTIVE]"
* #provide  ^designation[+].language = #en-UK
* #provide  ^designation[=].value = "transfer of [PERSPECTIVE]"
* #transfer_ownership "transfer_ownership"
* #transfer_ownership  ^designation[0].language = #de-DE
* #transfer_ownership  ^designation[=].value = "Übertragung des Eigentums an [PERSPEKTIVE] vom Teilnehmer an den Verantwortlichen/Datenverarbeiter/Träger der Biobank"
* #transfer_ownership  ^designation[+].language = #en-UK
* #transfer_ownership  ^designation[=].value = "transfer the ownership of [PERSPECTIVE] from the participant to the controller/data processor/carrier of the biobank."
* #view "view"
* #view  ^designation[0].language = #de-DE
* #view  ^designation[=].value = "Einsicht in [PERSPEKTIVE]"
* #view  ^designation[+].language = #en-UK
* #view  ^designation[=].value = "insight into [PERSPECTIVE]"
* #collect "collect"
* #collect  ^designation[0].language = #de-DE
* #collect  ^designation[=].value = "Erhebung neuer [PERSPEKTIVE]"
* #collect  ^designation[+].language = #en-UK
* #collect  ^designation[=].value = "collection of new [PERSPECTIVE]"
* #analyse_genetic "analyse_genetic"
* #analyse_genetic  ^designation[0].language = #de-DE
* #analyse_genetic  ^designation[=].value = "Gewinnung von genetischen Daten aus [PERSPEKTIVE]"
* #analyse_genetic  ^designation[+].language = #en-UK
* #analyse_genetic  ^designation[=].value = "obtaining genetic data from [PERSPECTIVE]"
* #inform "inform"
* #inform  ^designation[0].language = #de-DE
* #inform  ^designation[=].value = "Information"
* #inform  ^designation[+].language = #en-UK
* #inform  ^designation[=].value = "information "
* #store_process "store_process"
* #store_process  ^designation[0].language = #de-DE
* #store_process  ^designation[=].value = "Speicherung und Verarbeitung von [PERSPEKTIVE]"
* #store_process  ^designation[+].language = #en-UK
* #store_process  ^designation[=].value = "storage and processing of [PERSPECTIVE]"
* #contact "contact"
* #contact  ^designation[0].language = #de-DE
* #contact  ^designation[=].value = "Rekontaktierung des Teilnehmers (ggf. in Bezug auf [TAETIGKEIT|KONTEXT])"
* #contact  ^designation[+].language = #en-UK
* #contact  ^designation[=].value = "contact participant (if necessary, regarding [ACTIVITY|KONTEXT])"
* #use "use"
* #use  ^designation[0].language = #de-DE
* #use  ^designation[=].value = "Bereitstellung von [PERSPEKTIVE] für Nutzung / Analysen / zu Auswertezwecken [KONTEXT]"
* #use  ^designation[+].language = #en-UK
* #use  ^designation[=].value = "provision of [PERSPECTIVE] for use / analyses / for evaluation purposes [CONTEXT]."
* #process "process"
* #process  ^designation[0].language = #de-DE
* #process  ^designation[=].value = "Verarbeitung von [PERSPEKTIVE]"
* #process  ^designation[+].language = #en-UK
* #process  ^designation[=].value = "processing of [PERSPECTIVE]"
* #merge "merge"
* #merge  ^designation[0].language = #de-DE
* #merge  ^designation[=].value = "Zusammenführung und ggf. überführen von [PERSPEKTIVE]"
* #merge  ^designation[+].language = #en-UK
* #merge  ^designation[=].value = "merging and, if necessary, transferring of [PERSPECTIVE]"
* #query "query"
* #query  ^designation[0].language = #de-DE
* #query  ^designation[=].value = "Abfrage von [Kontext]"
* #query  ^designation[+].language = #en-UK
* #query  ^designation[=].value = "query with/from [Context]"
* #supplement "supplement"
* #supplement  ^designation[0].language = #de-DE
* #supplement  ^designation[=].value = "Ergänzende / kompletttierende Erhebung zusätzlicher [PERSPEKTIVE] mit / aus [Kontext]"
* #supplement  ^designation[+].language = #en-UK
* #supplement  ^designation[=].value = "supplementary / complementary collection of additional [PERSPECTIVE] with / from [context]."
* #link "link"
* #link  ^designation[0].language = #de-DE
* #link  ^designation[=].value = "Verknüpfung von Daten der betroffenen Person mit [KONTEXT]"
* #link  ^designation[+].language = #en-UK
* #link  ^designation[=].value = "linking data of the data subject to [CONTEXT]"
