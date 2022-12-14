#### **{{link:PolicyStatesForPerson}}**

*HINWEIS: Ab TTP-FHIR-Gateway Release* **2.1.0** *ist diese Operation deprecated. Sie wird durch die Operations
{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-Operations-allPolicyStatesForPerson.md}}
 und
 {{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-Operations-currentConsentForPersonAndTemplate.md}}
  ersetzt.*

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren

##### **Aufruf und Rückgabe**
{{render:PolicyStatesForPerson}}

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllPolicyStatesForPerson-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Bundle-AllPolicyStatesForPerson-response-example-1.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
