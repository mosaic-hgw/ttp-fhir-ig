![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 
#### ConsentPolicy
{{tree:profile-ActivityDefinition-ConsentPolicy}}

##### Zweck
Abbildung aller relevanten Information zur Verwaltung wiederverwendbarer Einwilligungspolicies mit gICS

##### Suchparameter

|Name|Typ|Beschreibung|Pfad|
|-
|useContextIdentifier|token|Eindeutiger Name (Identifikator) der Domain|ActivityDefinition.useContext.valueReference(ResearchStudy).identifier|
|name|string|Name der Policy|ActivityDefinition.name|
|code|token|Code der Policy|ActivityDefinition.code|
|version|token|Version der Policy|ActivityDefinition.version|

Zulässige Kombinationen von Suchparametern:

* alle Policies einer Consent Domain<br><code>GET [base]/gics/ActivityDefinition?useContextIdentifier=MIRACUM</code>
* spezifische Policy einer Consent Domain nach Name<br><code>GET [base]/gics/ActivityDefinition?useContextIdentifier=MIRACUM&name=BIOMAT_Analysedaten_erheben&version=1.0</code>
* spezifische Policy einer Consent Domain nach Code<br><code>GET [base]/gics/ActivityDefinition?useContextIdentifier=MIRACUM&code=https://ths-greifswald.de/fhir/CodeSystem/gics/Policy|MDAT_speichern&version=1.0</code>

##### Beispiel
{{xml:example-ActivityDefinition-ConsentPolicy-1}}