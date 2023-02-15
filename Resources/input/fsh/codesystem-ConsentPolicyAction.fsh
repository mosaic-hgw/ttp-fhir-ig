CodeSystem: ConsentPolicyAction
Id: ConsentPolicyActionCS
Description: "Extensible description of the permissible (data processing-) action resulting from consented module or policy."
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyAction"
* ^version = "1.1"
* ^purpose = "Second axis 'action' of the 'Semantic Consent Code (SCC)' for use as Consent.provision.action"
* ^caseSensitive = true
* ^content = #complete

* #provide "provide"
* #provide  ^designation[0].language = #de-DE
* #provide  ^designation[=].value = "Weitergabe von [CLASS]"
* #provide  ^designation[+].language = #en-UK
* #provide  ^designation[=].value = "transfer of [CLASS]"
* #transfer_ownership "transfer_ownership"
* #transfer_ownership  ^designation[0].language = #de-DE
* #transfer_ownership  ^designation[=].value = "Übertragung des Eigentums an [CLASS] vom Teilnehmer an den Verantwortlichen/Datenverarbeiter/Träger der Biobank"
* #transfer_ownership  ^designation[+].language = #en-UK
* #transfer_ownership  ^designation[=].value = "transfer the ownership of [CLASS] from the participant to the controller/data processor/carrier of the biobank."
* #view "view"
* #view  ^designation[0].language = #de-DE
* #view  ^designation[=].value = "Einsicht in [CLASS]"
* #view  ^designation[+].language = #en-UK
* #view  ^designation[=].value = "insight into [CLASS]"
* #collect "collect"
* #collect  ^designation[0].language = #de-DE
* #collect  ^designation[=].value = "Erhebung neuer [CLASS]"
* #collect  ^designation[+].language = #en-UK
* #collect  ^designation[=].value = "collection of new [CLASS]"
* #analyse_genetic "analyse_genetic"
* #analyse_genetic  ^designation[0].language = #de-DE
* #analyse_genetic  ^designation[=].value = "Gewinnung von genetischen Daten aus [CLASS]"
* #analyse_genetic  ^designation[+].language = #en-UK
* #analyse_genetic  ^designation[=].value = "obtaining genetic data from [CLASS]"
* #inform "inform"
* #inform  ^designation[0].language = #de-DE
* #inform  ^designation[=].value = "Information"
* #inform  ^designation[+].language = #en-UK
* #inform  ^designation[=].value = "information "
* #store_process "store_process"
* #store_process  ^designation[0].language = #de-DE
* #store_process  ^designation[=].value = "Speicherung und Verarbeitung von [CLASS]"
* #store_process  ^designation[+].language = #en-UK
* #store_process  ^designation[=].value = "storage and processing of [CLASS]"
* #contact "contact"
* #contact  ^designation[0].language = #de-DE
* #contact  ^designation[=].value = "Rekontaktierung des Teilnehmers (ggf. in Bezug auf [TAETIGKEIT|KONTEXT])"
* #contact  ^designation[+].language = #en-UK
* #contact  ^designation[=].value = "contact participant (if necessary, regarding [ACTIVITY|KONTEXT])"
* #use "use"
* #use  ^designation[0].language = #de-DE
* #use  ^designation[=].value = "Bereitstellung von [CLASS] für Nutzung / Analysen / zu Auswertezwecken [PURPOSE]"
* #use  ^designation[+].language = #en-UK
* #use  ^designation[=].value = "provision of [CLASS] for use / analyses / for evaluation purposes [PURPOSE]."
* #process "process"
* #process  ^designation[0].language = #de-DE
* #process  ^designation[=].value = "Verarbeitung von [CLASS]"
* #process  ^designation[+].language = #en-UK
* #process  ^designation[=].value = "processing of [CLASS]"
* #merge "merge"
* #merge  ^designation[0].language = #de-DE
* #merge  ^designation[=].value = "Zusammenführung und ggf. überführen von [CLASS]"
* #merge  ^designation[+].language = #en-UK
* #merge  ^designation[=].value = "merging and, if necessary, transferring of [CLASS]"
* #query "query"
* #query  ^designation[0].language = #de-DE
* #query  ^designation[=].value = "Abfrage von [PURPOSE]"
* #query  ^designation[+].language = #en-UK
* #query  ^designation[=].value = "query with/from [PURPOSE]"
* #supplement "supplement"
* #supplement  ^designation[0].language = #de-DE
* #supplement  ^designation[=].value = "Ergänzende / kompletttierende Erhebung zusätzlicher [CLASS] mit / aus [PURPOSE]"
* #supplement  ^designation[+].language = #en-UK
* #supplement  ^designation[=].value = "supplementary / complementary collection of additional [CLASS] with / from [PURPOSE]."
* #link "link"
* #link  ^designation[0].language = #de-DE
* #link  ^designation[=].value = "Verknüpfung von Daten der betroffenen Person mit [PURPOSE]"
* #link  ^designation[+].language = #en-UK
* #link  ^designation[=].value = "linking data of the data subject to [PURPOSE]"
