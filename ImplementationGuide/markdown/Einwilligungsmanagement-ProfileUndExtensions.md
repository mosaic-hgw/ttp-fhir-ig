---
topic: ImplementationGuide-markdown-Einwilligungsmanagement-ProfileUndExtensions
---
![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}

### Profile

| Bezeichnung|Zweck|
--- | ---
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-ConsentDomain.md}}|Abgeleitetes Profil von ResearchStudy gemäß AG Einwilligungsmanagement ergänzt um verschiedene DomainProperties und differenzierte Versionierungsangaben|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-ConsentPolicy.md}}|Spezifikation von Einwilligungspolicies als Voraussetzung für Definition von Einwilligungsmodulen.|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-QuestionnaireProfile-ConsentModule.md}}|Abgeleitetes Profil von TemplateModule gemäß AG Einwilligungsmanagement ergänzt um verschiedene Properties und ExternalProperties, sowie Referenzierungsmöglichkeit auf ConsentDomain|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-QuestionnaireProfile-ConsentTemplate.md}}|Abgeleitetes Profil von TemplateFrame gemäß AG Einwilligungsmanagement ergänzt um verschiedene Properties und ExternalProperties, sowie Referenzierungsmöglichkeit auf ConsentDomain|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-Consent.md}}|Abgeleitetes Profil von Consent gemäß AG Einwilligungsmanagement ergänzt um ExternalProperties|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-Provenance.md}}|Abgeleitetes Profil von Provenance gemäß AG Einwilligungsmanagement ergänzt um eine Extension für den Ort der Unterschrift|
|{{pagelink:ImplementationGuide/markdown/Einwilligungsmanagement-ProfileUndExtensions-ConsentQualityControl.md}}|Abgeleitetes Profil von VerificationResult ergänzt um ExternalProperties und Comment|

### Extensions

Die Extensions sind in eines oder mehrere der Profile bereits integriert, soweit sie jeweils relevant sind.

In der nachfolgenden Tabelle werden die im Rahmen dieses Leitfadens definierten Extensions erläutert. Ggf. weitere verwendete Extensions (z.B. FHIR Core-Extensions) sind [im FHIR-Standard](http://www.hl7.org/fhir/extensibility-registry.html) bzw. im jeweiligen Quell-Leitfaden dokumentiert.

| Bezeichnung|Struktur|Zweck|
--- | ---
|Property|{{render:Property}}|Key Value Property-Element für **Properties** zur Individualisierung von Domains, Policies, Modules und Templates zur gICS-internen Verwendung|
|ExternalProperty|{{render:ExternalProperty}}|Key Value Property-Element für **External Properties** zur Individualisierung von Domains, Policies, Modules und Templates mit Fokus auf externe Anwendungen
|ExpirationProperty|{{render:ExpirationProperty}}|Key Value **Expiration Property** Element zur Definition von Gültigkeitszeiträumen
|PolicyVersionFormat|{{render:PolicyVersionFormat}}|Versionierungsformat der **Policies** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|ModuleVersionFormat|{{render:ModuleVersionFormat}}|Versionierungsformat der **Module** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|TemplateVersionFormat|{{render:TemplateVersionFormat}}|Versionierungsformat der **Templates** einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement|
|ConsentPolicyReference|{{render:ConsentPolicyReference}}|**Referenz auf eine Consent Policy** zur Verwendung innerhalb eines Consent Moduls|
|Comment|{{render:Comment}}|Ergänzender Kommentar|
|Created|{{render:Created}}|Erstellungsdatum der Ressource/Information|
|FreeTextDefAttributes|{{render:FreeTextDefAttributes}}|gics-spezifische Attribute von frei definierten Eingaben|
|Position|{{render:Position}}|Position (Ordinate) eines Items im Questionnaire. Im Kontext von FHIR ist diese Angabe redundant, wird aber dennoch mitgeführt.|
|QuestionnaireLabel|{{render:QuestionnaireLabel}}|Label in einem Questionnaire|
|ShortText|{{render:ShortText}}|Kurztext zum Item|
|VersionLabel|{{render:VersionLabel}}|Label für eine Zusatz-Version in einem Questionnaire|
|SupportedVersion|{{render:SupportedVersion}}|unterstüzte Version|
