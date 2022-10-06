#### **{{link:https://ths-greifswald.de/fhir/OperationDefinition/gics/allConsentsForTemplate}}**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung** 
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- Das spezifizierte Template muss Grundlage einer gültigen Einwilligung sein

##### **Aufruf und Rückgabe**
{{render:operationdefinition-allConsentsForTemplate}}

##### **Beispiel**
(Q4/2021)

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | --- 
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
