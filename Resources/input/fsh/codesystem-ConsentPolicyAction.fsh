CodeSystem: ConsentPolicyAction
Id: ConsentPolicyActionCS
Description: "Extensible description of the permissible (data processing-) action resulting from consented module or policy."
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentPolicyAction"
* ^version = "1.2"
* ^purpose = "Second axis 'action' of the 'Semantic Consent Code (SCC)' for use as Consent.provision.action"
* ^caseSensitive = true
* ^content = #complete

* #provide "provide"
* #provide  ^designation[0].language = #de-DE
* #provide  ^designation[=].use = $csSct#900000000000003001
* #provide  ^designation[=].value = "Weitergabe von [CLASS]"
* #provide  ^designation[+].language = #de-DE
* #provide  ^designation[=].use = $csSct#900000000000013009
* #provide  ^designation[=].value = "bereitstellen"
* #provide  ^designation[+].language = #en-UK
* #provide  ^designation[=].use = $csSct#900000000000003001
* #provide  ^designation[=].value = "transfer of [CLASS]"
* #transfer_ownership "transfer_ownership"
* #transfer_ownership  ^designation[0].language = #de-DE
* #transfer_ownership  ^designation[=].use = $csSct#900000000000003001
* #transfer_ownership  ^designation[=].value = "Übertragung des Eigentums an [CLASS] vom Teilnehmer an den Verantwortlichen/Datenverarbeiter/Träger der Biobank"
* #transfer_ownership  ^designation[+].language = #de-DE
* #transfer_ownership  ^designation[=].use = $csSct#900000000000013009
* #transfer_ownership  ^designation[=].value = "uebertragen_eigentum"
* #transfer_ownership  ^designation[+].language = #en-UK
* #transfer_ownership  ^designation[=].use = $csSct#900000000000003001
* #transfer_ownership  ^designation[=].value = "transfer the ownership of [CLASS] from the participant to the controller/data processor/carrier of the biobank."
* #view "view"
* #view  ^designation[0].language = #de-DE
* #view  ^designation[=].use = $csSct#900000000000003001
* #view  ^designation[=].value = "Einsicht in [CLASS]"
* #view  ^designation[+].language = #de-DE
* #view  ^designation[=].use = $csSct#900000000000013009
* #view  ^designation[=].value = "einsehen"
* #view  ^designation[+].language = #en-UK
* #view  ^designation[=].use = $csSct#900000000000003001
* #view  ^designation[=].value = "insight into [CLASS]"
* #collect "collect"
* #collect  ^designation[0].language = #de-DE
* #collect  ^designation[=].use = $csSct#900000000000003001
* #collect  ^designation[=].value = "Erhebung neuer [CLASS]"
* #collect  ^designation[+].language = #de-DE
* #collect  ^designation[=].use = $csSct#900000000000013009
* #collect  ^designation[=].value = "entnehmen; erheben"
* #collect  ^designation[+].language = #en-UK
* #collect  ^designation[=].use = $csSct#900000000000003001
* #collect  ^designation[=].value = "collection of new [CLASS]"
* #analyse_genetic "analyse_genetic"
* #analyse_genetic  ^designation[0].language = #de-DE
* #analyse_genetic  ^designation[=].use = $csSct#900000000000003001
* #analyse_genetic  ^designation[=].value = "Gewinnung von genetischen Daten aus [CLASS]"
* #analyse_genetic  ^designation[+].language = #de-DE
* #analyse_genetic  ^designation[=].use = $csSct#900000000000013009
* #analyse_genetic  ^designation[=].value = "analysieren_genetisch"
* #analyse_genetic  ^designation[+].language = #en-UK
* #analyse_genetic  ^designation[=].use = $csSct#900000000000003001
* #analyse_genetic  ^designation[=].value = "obtaining genetic data from [CLASS]"
* #inform "inform"
* #inform  ^designation[0].language = #de-DE
* #inform  ^designation[=].use = $csSct#900000000000003001
* #inform  ^designation[=].value = "Information"
* #inform  ^designation[+].language = #de-DE
* #inform  ^designation[=].use = $csSct#900000000000013009
* #inform  ^designation[=].value = "informieren"
* #inform  ^designation[+].language = #en-UK
* #inform  ^designation[=].use = $csSct#900000000000003001
* #inform  ^designation[=].value = "information "
* #store_process "store_process"
* #store_process  ^designation[0].language = #de-DE
* #store_process  ^designation[=].use = $csSct#900000000000003001
* #store_process  ^designation[=].value = "Speicherung und Verarbeitung von [CLASS]"
* #store_process  ^designation[+].language = #de-DE
* #store_process  ^designation[=].use = $csSct#900000000000013009
* #store_process  ^designation[=].value = "lagern_verarbeiten; speichern_verarbeiten"
* #store_process  ^designation[+].language = #en-UK
* #store_process  ^designation[=].use = $csSct#900000000000003001
* #store_process  ^designation[=].value = "storage and processing of [CLASS]"
* #contact "contact"
* #contact  ^designation[0].language = #de-DE
* #contact  ^designation[=].use = $csSct#900000000000003001
* #contact  ^designation[=].value = "Rekontaktierung des Teilnehmers (ggf. in Bezug auf [TAETIGKEIT|KONTEXT])"
* #contact  ^designation[+].language = #de-DE
* #contact  ^designation[=].use = $csSct#900000000000013009
* #contact  ^designation[=].value = "rekontaktieren"
* #contact  ^designation[+].language = #en-UK
* #contact  ^designation[=].use = $csSct#900000000000003001
* #contact  ^designation[=].value = "contact participant (if necessary, regarding [ACTIVITY|KONTEXT])"
* #use "use"
* #use  ^designation[0].language = #de-DE
* #use  ^designation[=].use = $csSct#900000000000003001
* #use  ^designation[=].value = "Bereitstellung von [CLASS] für Nutzung / Analysen / zu Auswertezwecken [PURPOSE]"
* #use  ^designation[+].language = #de-DE
* #use  ^designation[=].use = $csSct#900000000000013009
* #use  ^designation[=].value = "nutzen"
* #use  ^designation[+].language = #en-UK
* #use  ^designation[=].use = $csSct#900000000000003001
* #use  ^designation[=].value = "provision of [CLASS] for use / analyses / for evaluation purposes [PURPOSE]."
* #process "process"
* #process  ^designation[0].language = #de-DE
* #process  ^designation[=].use = $csSct#900000000000003001
* #process  ^designation[=].value = "Verarbeitung von [CLASS]"
* #process  ^designation[+].language = #de-DE
* #process  ^designation[=].use = $csSct#900000000000013009
* #process  ^designation[=].value = "verarbeiten"
* #process  ^designation[+].language = #en-UK
* #process  ^designation[=].use = $csSct#900000000000003001
* #process  ^designation[=].value = "processing of [CLASS]"
* #merge "merge"
* #merge  ^designation[0].language = #de-DE
* #merge  ^designation[=].use = $csSct#900000000000003001
* #merge  ^designation[=].value = "Zusammenführung und ggf. überführen von [CLASS]"
* #merge  ^designation[+].language = #de-DE
* #merge  ^designation[=].use = $csSct#900000000000013009
* #merge  ^designation[=].value = "zusammenfuehren"
* #merge  ^designation[+].language = #en-UK
* #merge  ^designation[=].use = $csSct#900000000000003001
* #merge  ^designation[=].value = "merging and, if necessary, transferring of [CLASS]"
* #query "query"
* #query  ^designation[0].language = #de-DE
* #query  ^designation[=].use = $csSct#900000000000003001
* #query  ^designation[=].value = "Abfrage von [PURPOSE]"
* #query  ^designation[+].language = #de-DE
* #query  ^designation[=].use = $csSct#900000000000013009
* #query  ^designation[=].value = "abfragen"
* #query  ^designation[+].language = #en-UK
* #query  ^designation[=].use = $csSct#900000000000003001
* #query  ^designation[=].value = "query with/from [PURPOSE]"
* #supplement "supplement"
* #supplement  ^designation[0].language = #de-DE
* #supplement  ^designation[=].use = $csSct#900000000000003001
* #supplement  ^designation[=].value = "Ergänzende / kompletttierende Erhebung zusätzlicher [CLASS] mit / aus [PURPOSE]"
* #supplement  ^designation[+].language = #de-DE
* #supplement  ^designation[=].use = $csSct#900000000000013009
* #supplement  ^designation[=].value = "ergaenzen"
* #supplement  ^designation[+].language = #en-UK
* #supplement  ^designation[=].use = $csSct#900000000000003001
* #supplement  ^designation[=].value = "supplementary / complementary collection of additional [CLASS] with / from [PURPOSE]."
* #link "link"
* #link  ^designation[0].language = #de-DE
* #link  ^designation[=].use = $csSct#900000000000003001
* #link  ^designation[=].value = "Verknüpfung von Daten der betroffenen Person mit [PURPOSE]"
* #link  ^designation[+].language = #de-DE
* #link  ^designation[=].use = $csSct#900000000000013009
* #link  ^designation[=].value = "verknuepfen"
* #link  ^designation[+].language = #en-UK
* #link  ^designation[=].use = $csSct#900000000000003001
* #link  ^designation[=].value = "linking data of the data subject to [PURPOSE]"
