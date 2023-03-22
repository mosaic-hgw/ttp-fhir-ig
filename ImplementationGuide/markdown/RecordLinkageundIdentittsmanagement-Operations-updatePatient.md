#### {{page-title}}

##### **Zweck**
Aktualisierung eines **vorhandenen Datensatzes** von personenidentifizierenden Informationen eines vorhandenen Patienten unter Angabe eines vormals vergebenen Master Person Index (MPI ID).

##### **Voraussetzung**
Die angegebenen Parameter zur Spezifikation der Matching-Domäne, der Datenquelle und der MPI-ID müssen im E-PIX vorhanden sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$updatePatient`

Der Funktionsaufruf liefert eine Parameters-Ressource zurück.

{{render:UpdatePatient}}

Der Parameter "identity" enthält eine Patient-Ressource entsprechend dem allgemeinen Patient-Profil:

{{tree:Patient}}

Der Parameter "mpiPerson" enthält eine Person-Ressource entsprechend dem allgemeinen Person-Profil. Die Angabe link.assurance='level4' kennzeichnet hierbei die Referenz-Identität:

{{tree:Person}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-UpdatePatient-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-UpdatePatient-response-example-1.json}}
