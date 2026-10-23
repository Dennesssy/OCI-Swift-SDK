# Reference SDK Explorer Handoff

## Repository URLs
- Python SDK: https://github.com/oracle/oci-python-sdk
- Go SDK: https://github.com/oracle/oci-go-sdk
- Java SDK: https://github.com/oracle/oci-java-sdk

## Python SDK Structure (oci.ai_language)
Folder: `oci/ai_language/`

Model Classes (from official documentation):
- AssertionDetails
- BatchDetectDominantLanguageDetails
- BatchDetectDominantLanguageResult
- BatchDetectHealthEntityDetails
- BatchDetectHealthEntityResult
- BatchDetectLanguageEntitiesDetails
- BatchDetectLanguageEntitiesResult
- BatchDetectLanguageKeyPhrasesDetails
- BatchDetectLanguageKeyPhrasesResult
- BatchDetectLanguagePiiEntitiesDetails
- BatchDetectLanguagePiiEntitiesResult
- BatchDetectLanguageSentimentsDetails
- BatchDetectLanguageSentimentsResult
- BatchDetectLanguageTextClassificationDetails
- BatchDetectLanguageTextClassificationResult
- BatchLanguageTranslationDetails
- BatchLanguageTranslationResult
- Capabilities
- Capability
- ChangeEndpointCompartmentDetails
- ChangeJobCompartmentDetails
- ChangeModelCompartmentDetails
- ChangeProjectCompartmentDetails
- ClassMetrics
- ClassificationMultiClassModeDetails
- ClassificationMultiLabelModeDetails
- ClassificationType
- ConfigurationDetails
- ConfusionMatrixDetails
- CreateEndpointDetails
- CreateJobDetails
- CreateModelDetails
- CreateProjectDetails
- DataScienceLabelingDataset
- DatasetDetails
- DetectDominantLanguageDetails
- DetectDominantLanguageResult
- DetectLanguageEntitiesDetails
- DetectLanguageEntitiesResult
- DetectLanguageKeyPhrasesDetails
- DetectLanguageKeyPhrasesResult
- DetectLanguageSentimentsDetails
- DetectLanguageSentimentsResult
- DetectLanguageTextClassificationDetails
- DetectLanguageTextClassificationResult
- DetectedLanguage
- DocumentError
- DocumentsConfiguration
- DominantLanguageDocument
- DominantLanguageDocumentResult
- Endpoint
- EndpointCollection
- EndpointSummary
- Entity
- EntityDocumentResult
- EntityLabelErrorAnalysis
- EntityMetrics
- ErrorDetails
- EvaluationResultCollection
- EvaluationResultSummary
- EvaluationResults
- HealthEntity
- HealthEntityDocumentResult
- HealthNluModelDetails
- HierarchicalEntity
- InputConfiguration
- InputLocation
- Job
- JobCollection
- JobSummary
- KeyPhrase
- KeyPhraseDocumentResult
- LocationDetails
- MelConcept
- MelConceptDetails
- MetaInfo
- Model
- ModelCollection
- ModelDetails
- ModelMetadataDetails
- ModelSummary
- ModelTypeInfo
- NamedEntityRecognitionEvaluationResult
- NamedEntityRecognitionEvaluationResults
- NamedEntityRecognitionModelDetails
- NamedEntityRecognitionModelMetrics
- NamedEntityRecognitionModelMetrics
- ObjectListDataset
- ObjectPrefixOutputLocation
- ObjectStorageDataset
- ObjectStorageFileNameLocation
- ObjectStoragePrefixLocation
- PiiEntity
- PiiEntityDocumentResult
- PiiEntityMask
- PiiEntityMasking
- PiiEntityRelexify
- PiiEntityRemove
- PiiEntityReplace
- PiiModelDetails
- PreDeployedLanguageModels
- PreTrainedHealthNluModelDetails
- PreTrainedKeyPhraseExtractionModelDetails
- PreTrainedLanguageDetectionModelDetails
- PreTrainedNamedEntityRecognitionModelDetails
- PreTrainedPiiModelDetails
- PreTrainedSentimentAnalysisModelDetails
- PreTrainedSummarization
- PreTrainedTextClassificationModelDetails
- PreTrainedTranslationModelDetails
- PreTrainedUniversalModel
- Profile
- Project
- ProjectCollection

## Go SDK Structure
Folder: `services/ailanguage/`

Note: Go SDK follows similar naming conventions to Python SDK, with PascalCase type names.

## Java SDK Structure
Folder: `bmc-sdk/src/main/java/com/oracle/bmc/ailanguage/`

Package: `com.oracle.bmc.ailanguage`

## Cross-SDK Comparison Notes
### Common Patterns
1. All three SDKs use PascalCase for model class names
2. Model names are descriptive and follow the pattern: [Operation][Entity][Type]
3. Request/Response pattern: Details classes for input, Result classes for output
4. Collection classes for list operations (e.g., ModelCollection, EndpointCollection)
5. Summary classes for list operations (e.g., ModelSummary, EndpointSummary)

### Naming Conventions
- Python: `snake_case` for files, `PascalCase` for classes
- Go: `PascalCase` for exported types
- Java: `PascalCase` for classes

### API Method Signatures
Common operations across all SDKs:
- Batch operations: BatchDetect[Feature]Details / BatchDetect[Feature]Result
- Single operations: Detect[Feature]Details / Detect[Feature]Result
- CRUD operations: Create[Resource]Details, Update[Resource]Details, Delete[Resource]
- List operations: List[Resource]RequestResponse
- Get operations: Get[Resource]RequestResponse
- Change compartment: Change[Resource]CompartmentDetails

### Key Features Supported
- Language detection
- Named entity recognition (NER)
- Key phrase extraction
- Sentiment analysis
- Text classification
- PII (Personal Identifiable Information) detection
- Health NLU
- Language translation
- Model training and deployment
- Job management for batch operations
