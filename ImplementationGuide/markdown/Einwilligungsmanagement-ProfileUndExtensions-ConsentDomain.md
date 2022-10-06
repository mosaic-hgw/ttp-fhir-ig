![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 
#### ConsentDomain

{{tree:profile-ResearchStudy-ConsentDomain}}

##### Zweck
Erweitertes Profil der Consent Management Domain Research Study (Arbeitsgruppe Einwilligungsmanagement) zur Abbildung aller relevanten Domain-Infos für gICS über entsprechende Extensions

##### Suchparameter

|Name|Typ|Beschreibung|Pfad|
|-
|identifier|token|Eindeutiger Name (Identifikator) der Domain|ResearchStudy.identifier|
|_profile|reference|Angabe um Ausgabeprofil festzulegen.<br>default: https://ths-greifswald.de/fhir/StructureDefinition/gics/ResearchStudy/ConsentDomain<br> alternativ: http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy |ResearchStudy.meta.profile|

Zulässige Kombinationen von Suchparametern:

* alle ConsentDomains<br><code>GET [base]/gics/ResearchStudy</code>
* alle ConsentDomains, profiliert nach IG Einwilligungsmanagement<br><code>GET [base]/gics/ResearchStudy?_profile=http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy</code>
* spezifische ConsentDomain<br><code>GET [base]/gics/ResearchStudy?identifier=MIRACUM</code><br><code>GET [base]/gics/ResearchStudy?identifier=MIRACUM&_profile=http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy</code>

##### Beispiel
{{xml:example-ResearchStudy-ConsentDomain-1}}