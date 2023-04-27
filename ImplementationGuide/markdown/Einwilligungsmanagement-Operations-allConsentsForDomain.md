#### **{{link:AllConsentsForDomain}}**
**Unterstützt ab TTP-FHIR Gateway Version 2.0.0**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung existieren

##### **Aufruf und Rückgabe**
{{render:AllConsentsForDomain}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gics/$allConsentsForDomain`

Der Funktionsaufruf liefert ein Bundle vom Typ "collection". Das Bundle enthält je Consent jeweils ein Bundle mit allen für den spezifischen Consent relevanten Ressourcen (TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance,Patient und i.a. DocumentReference). Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-AllConsentsForDomain-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForDomain-response-example-1.json}}
