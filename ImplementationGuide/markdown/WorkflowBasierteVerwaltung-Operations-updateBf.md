#### **{{link:UpdateBf}}**

##### **Zweck**
Aktualisierung eines bestehenden Bloomfilters (z.B. bei geänderter Konfiguration oder vorheriger fehlerhafter Übermittlung) bezogen auf ein bereits bekanntes Pseudonym.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2023/03/fhirgw-updateBf.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie (study) muss im Zielsystem bekannt und angelegt sein.
- Die spezifizierte Quell-Domäne (source) muss im Zielsystem bekannt und angelegt sein.
- Das spezifizierte Pseudonym (pseudonym) muss im Zielsystem bekannt und angelegt sein.
- API-KEY: Der spezifizierte API-KEY muss valide und zum Aufruf der Methode autorisiert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$updateBf`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource mit codierter Statusinformationen zurück.

{{render:UpdateBf}}

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter
* 401: Fehlende Authentifizierung oder Autorisierung
* 404: Parameter mit unbekanntem Inhalt

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-UpdateBf-request-example-1.json}}

Eine beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/OperationOutcome-OperationOutcome-UpdateBf-response-example-1.json}}