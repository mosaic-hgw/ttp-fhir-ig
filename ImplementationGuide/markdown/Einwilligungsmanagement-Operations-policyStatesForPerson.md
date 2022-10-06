#### **{{link:operationdefinition-policyStatesForPerson}}**

*HINWEIS: Ab TTP-FHIR-Gateway Release* **2.1.0** *ist diese Operation deprecated. Sie wird durch die Operations 
{{pagelink:allPolicyStatesForPerson}}
 und 
 {{pagelink:currentPolicyStatesForPerson}}
  ersetzt.*

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung** 
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren

##### **Aufruf und Rückgabe**
{{render:operationdefinition-policyStatesForPerson}}

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:example-operation-policyStatesForPerson-request-1}}

Beispielhafte Rückmeldung:
{{xml:example-operation-policyStatesForPerson-response-1}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | --- 
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|