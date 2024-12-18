#### {{page-title}}
**Unterstützt ab TTP-FHIR Gateway Version 2.2.0**

##### **Zweck**
Anlegen und Matching (**Record Linkage**) von übermittelten Patienten-Resourcen auf Basis der personenidentifizierenden Informationen (IDAT) im [E-PIX](https://www.ths-greifswald.de/e-pix).

Dabei werden eine oder mehrere Patientenidentitäten im E-PIX erzeugt. Nach Abschluss des Record Linkage Prozesses werden für jede übermittelte Patienten-Resource der **Master Person Index (MPI ID)**, die MPI-Zuordnung (Person-Ressource) sowie der Match-Status und vorhandene Identitäten zurückgegeben.

##### **Voraussetzung**
Die angegebenen Parameter zur Spezifikation der Matching-Domäne und der Datenquelle müssen im E-PIX konfiguriert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$addPatient`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus einem oder mehreren Multi-Part-Parametern zurück.

{{render:AddPatient}}

Die Parameter "identity" und "sourceIdentity" enthalten eine Patient-Ressource entsprechend dem allgemeinen Patient-Profil:

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
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-AddPatient-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-AddPatient-response-example-1.json}}
