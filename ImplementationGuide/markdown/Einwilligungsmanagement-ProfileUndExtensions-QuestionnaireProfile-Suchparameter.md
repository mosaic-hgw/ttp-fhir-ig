![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 
#### Questionnaire-Suchparameter

|Name|Typ|Beschreibung|Pfad|
|-
|useContextIdentifier|token|Eindeutiger Name (Identifikator) der Domain|Questionnaire.useContext.valueReference(ResearchStudy).identifier|
|context-type|token|Code gemäß http://fhir.de/ConsentManagement/CodeSystem/QuestionnaireComponents|Questionnaire.useContext.code|
|name|string|Name des Questionnaires ("computationally friendly")|Questionnaire.name|
|version|token|Version des Questionnaires|Questionnaire.version|
|_profile|reference|Angabe um Ausgabeprofil festzulegen.<br>Default ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement.<br>Das Profil muss konsistent zu useContext.code bzw. zum Suchparameter context-type sein.|Questionnaire.meta.profile|

Mittels context-type wird zwischen TemplateModule, TemplateFrame und QuestionnaireComposed unterschieden.


Zulässige Kombinationen von Suchparametern:
* alle Questionnaires einer Domain abfragen<br><code>GET [base]/gics/Questionnaire?useContextIdentifier=MI&context-type=TemplateFrame</code>
* alle Questionnaires einer Domain mit einem bestimmten Namen abfragen<br><code>GET [base]/gics/Questionnaire?useContextIdentifier=MI&context-type=TemplateFrame&name=Patienteneinwilligung MII [mit PDF]</code>
* alle Questionnaires einer Domain mit einem bestimmten Namen und einer bestimmten Version abfragen<br><code>GET [base]/gics/Questionnaire?useContextIdentifier=MI&context-type=TemplateFrame&name=Patienteneinwilligung MII [mit PDF]&version=1.6.d</code>
* alle Questionnaires einer Domain mit einem bestimmten Namen und einer bestimmten Version abfragen<br><code>GET [base]/gics/Questionnaire?useContextIdentifier=MI&context-type=TemplateFrame&name=Patienteneinwilligung MII [mit PDF]&version=1.6.d</code>
* alle Questionnaires einer Domain mit einer bestimmten canonical URL und einer bestimmten Version abfragen<br><code>GET [base]/gics/Questionnaire?useContextIdentifier=MI&url=https://ths-greifswald.de/fhir/gics/TemplateFrame/MII%7CPatienteneinwilligung+MII&context-type=TemplateFrame&version=1.6.d</code>