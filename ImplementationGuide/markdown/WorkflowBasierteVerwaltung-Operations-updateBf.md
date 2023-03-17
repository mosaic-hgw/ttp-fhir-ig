#### **{{link:UpdateBf}}**

##### **Zweck**
Aktualisierung eines bestehenden Bloomfilters (z.B. bei geänderter Konfiguration oder vorheriger fehlerhafter Übermittlung) bezogen auf ein bereits bekanntes Pseudonym.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2023/02/fhirgw-updateBf.png">
</p>

##### **Voraussetzung**
TODO

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$updateBf`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource mit codierten Statusinformationen zurück.

{{render:UpdateBf}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im vollständigen Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter
* 401: Fehlende Authentifizierung oder Autorisierung

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-UpdateBf-request-example-1.json}}

Eine beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/OperationOutcome-OperationOutcome-UpdateBf-response-example-1.json}}
