![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 

### Profile

| Bezeichnung|Zweck|
--- | --- 
|{{pagelink:ConsentDomain}}|Abgeleitetes Profil von ResearchStudy gemäß AG Einwilligungsmanagement ergänzt um verschiedene DomainProperties und differenzierte Versionierungsangaben|
|{{link:ConsentPolicy}}|Spezifikation von Einwilligungspolicies als Voraussetzung für Definition von Einwilligungsmodulen.|
|{{pagelink:ConsentModule}}|Abgeleitetes Profil von TemplateModule gemäß AG Einwilligungsmanagement ergänzt um verschiedene Properties und ExternalProperties, sowie Referenzierungsmöglichkeit auf ConsentDomain|
|{{pagelink:ConsentTemplate}}|Abgeleitetes Profil von TemplateFrame gemäß AG Einwilligungsmanagement ergänzt um verschiedene Properties und ExternalProperties, sowie Referenzierungsmöglichkeit auf ConsentDomain|
|{{pagelink:Consent}}|Abgeleitetes Profil von Consent gemäß AG Einwilligungsmanagement ergänzt um ExternalProperties|
|{{pagelink:ConsentQualityControl}}|Abgeleitetes Profil von VerificationResult ergänzt um ExternalProperties und Commment|

### Extensions

Die Extensions sind in eines oder mehrere der Profile bereits integriert, soweit sie jeweils relevant sind.

In der nachfolgenden Tabelle werden die im Rahmen dieses Leitfadens definierten Extensions erläutert. Ggf. weitere verwendete Extensions (z.B. FHIR Core-Extensions) sind [im FHIR-Standard](http://www.hl7.org/fhir/extensibility-registry.html) bzw. im jeweiligen Quell-Leitfaden dokumentiert.

| Bezeichnung|Struktur|Zweck|
--- | --- 
|Property|{{render:extension-Property}}|Key Value Property-Element für **Properties** zur Individualisierung von Domains, Policies, Modules und Templates zur gICS-internen Verwendung|
|ExternalProperty|{{render:extension-ExternalProperty}}|Key Value Property-Element für **External Properties** zur Individualisierung von Domains, Policies, Modules und Templates mit Fokus auf externe Anwendungen
|ExpirationProperty|{{render:extension-ExpirationProperty}}|Key Value **Expiration Property** Element zur Definition von Gültigkeitszeiträumen
|PolicyVersionFormat|{{render:extension-PolicyVersionFormat}}|Versionierungsformat der **Policies** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|ModuleVersionFormat|{{render:extension-ModuleVersionFormat}}|Versionierungsformat der **Module** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|TemplateVersionFormat|{{render:extension-TemplateVersionFormat}}|Versionierungsformat der **Templates** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|ConsentPolicyReference|{{render:extension-ConsentPolicyReference}}|**Referenz auf eine Consent Policy** zur Verwendung innerhalb eines Consent Moduls|
|Comment|{{render:extension-Comment}}|Ergänzender Kommentar|
|Created|{{render:extension-Created}}|Erstellungsdatum der Ressource/Information|
|FreeTextDefAttributes|{{render:extension-FreeTextDefAttributes}}|gics-spezifische Attribute von frei definierten Eingaben|
|Position|{{render:extension-Position}}|Position (Ordinate) eines Items im Questionnaire. Im Kontext von FHIR ist diese Angabe redundant, wird aber dennoch mitgeführt.|
|QuestionnaireLabel|{{render:extension-QuestionnaireLabel}}|Label in einem Questionnaire|
|ShortText|{{render:extension-ShortText}}|Kurztext zum Item|
|VersionLabel|{{render:extension-VersionLabel}}|Label für eine Zusatz-Version in einem Questionnaire|
|SupportedVersion|{{render:extension-SupportedVersion}}|unterstüzte Version|
