#### **{{link:AllConsentsForTemplate}}**
**Unterstützt ab TTP-FHIR Gateway Version 2.1.0**
<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- Das spezifizierte Template muss Grundlage einer gültigen Einwilligung sein

##### **Aufruf und Rückgabe**
{{render:AllConsentsForTemplate}}

Paging entsprechend der [FHIR Search API](http://hl7.org/fhir/r4/search.html) wird ab TTP-FHIR Gateway Version 2023.1.1 unterstützt, namentlich die die Parameter
* _count: (maximale) Anzahl der im Bundle enthaltenen Ressourcen
* _offset: fortlaufende Nummer der ersten im Bundle enthaltenen Ressource

Der Default-Offset ist 0. Der Default-Count ist 100. Negative Werte für _offset und _count sind nicht erlaubt.
Werden weder _count noch _offset angegeben, enthält das Bundle maximal 100 Ergebnisse (Default-Count=100, Default-Offset=0).

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllConsentsForTemplate-request-example-1.json}}

Beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForTemplate-response-example-1.json}}
