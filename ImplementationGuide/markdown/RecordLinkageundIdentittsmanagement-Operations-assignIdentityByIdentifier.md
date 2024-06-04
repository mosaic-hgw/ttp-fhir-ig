#### {{page-title}}
**Konzeptarbeit. Noch nicht implementiert**

##### **Zweck**
Verschiebt die Zuordnung einer Identität zu einer Person (MPI-Eintrag) auf eine andere Person. Suchkriterium für die Identität ist ein Identifier.

##### **Voraussetzung**
Verwendete Parameter-Werte müssen im E-PIX bekannt sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$assignIdentityByIdentifier`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource zurück.

{{render:AssignIdentityByIdentifier}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Attribute.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-AssignIdentityByIdentifier-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/OperationOutcome-OperationOutcome-AssignIdentityByIdentifier-response-example-1.json}}
