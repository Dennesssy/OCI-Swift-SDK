# Swift SDK Explorer Handoff

## Folder Structure
Location: `/Users/denn/Documents/OkOci/OCI-Swift-SDK/ailanguage/`

Total files: 168 Swift files

## File Organization
All Swift files are in a single flat directory `ailanguage/`

Naming convention: `snake_case.swift` (e.g., `model.swift`, `batch_detect_language_entities_details.swift`)

## Model Classes/Types (168 total)

### Core Models
- model
- model_collection
- model_summary
- model_metadata_details
- model_type_info

### Batch Detection Operations
- batch_detect_dominant_language_details
- batch_detect_dominant_language_request_response
- batch_detect_dominant_language_result
- batch_detect_health_entity_request_response
- batch_detect_health_entity_result
- batch_detect_language_entities_details
- batch_detect_language_entities_request_response
- batch_detect_language_entities_result
- batch_detect_language_key_phrases_details
- batch_detect_language_key_phrases_request_response
- batch_detect_language_key_phrases_result
- batch_detect_language_pii_entities_details
- batch_detect_language_pii_entities_request_response
- batch_detect_language_pii_entities_result
- batch_detect_language_sentiments_details
- batch_detect_language_sentiments_request_response
- batch_detect_language_sentiments_result
- batch_detect_language_text_classification_request_response
- batch_detect_language_text_classification_result

### Single Detection Operations
- detect_dominant_language_details
- detect_dominant_language_request_response
- detect_dominant_language_result
- detect_language_entities_details
- detect_language_entities_request_response
- detect_language_entities_result
- detect_language_key_phrases_details
- detect_language_key_phrases_request_response
- detect_language_key_phrases_result
- detect_language_sentiments_details
- detect_language_sentiments_request_response
- detect_language_sentiments_result
- detect_language_text_classification_details
- detect_language_text_classification_request_response
- detect_language_text_classification_result

### Translation
- batch_language_translation_details
- batch_language_translation_request_response
- batch_language_translation_result

### Entities and Results
- entity_document_result
- hierarchical_entity
- key_phrase
- key_phrase_document_result
- detected_language
- dominant_language_document
- dominant_language_document_result
- health_entity_document_result
- pii_entity_document_result
- sentiment_document_result
- text_classification_document_result
- translation_document_result

### PII (Personal Identifiable Information)
- pii_entity_mask
- pii_entity_masking
- pii_entity_remove
- pii_entity_replace

### Text Classification
- text_classification
- text_classification_evaluation_results
- text_classification_model_evaluation_result
- text_classification_model_metrics
- classification_type
- classification_multi_class_mode_details
- classification_multi_label_mode_details

### Sentiment Analysis
- sentiment_aspect
- sentiment_sentence

### NER (Named Entity Recognition)
- named_entity_recognition_evaluation_result
- named_entity_recognition_evaluation_results
- named_entity_recognition_model_details
- named_entity_recognition_model_metrics
- entity_label_error_analysis
- entity_metrics
- ner_model_version
- relation_entity
- resolved_entities
- resolved_entity

### Model Types
- pre_trained_language_detection_model_details
- pre_trained_named_entity_recognition_model_details
- pre_trained_key_phrase_extraction_model_details
- pre_trained_pii_model_details
- pre_trained_sentiment_analysis_model_details
- pre_trained_text_classification_model_details
- pre_trained_health_nlu_model_details
- pre_trained_universal_model
- pre_deployed_language_models

### Health NLU
- mel_concept_details

### Job Management
- job
- job_summary
- create_job_request_response
- update_job_details
- update_job_request_response
- cancel_job_request_response
- delete_job_request_response
- get_job_request_response
- list_jobs_request_response

### Endpoint Management
- endpoint
- endpoint_collection
- endpoint_summary
- create_endpoint_details
- create_endpoint_request_response
- update_endpoint_details
- update_endpoint_request_response
- delete_endpoint_request_response
- get_endpoint_request_response
- list_endpoints_request_response

### Project Management
- project_summary
- create_project_details
- create_project_request_response
- update_project_details
- update_project_request_response
- change_project_compartment_details
- change_project_compartment_request_response
- get_project_request_response
- list_projects_request_response

### Model Management
- create_model_details
- create_model_request_response
- update_model_details
- update_model_request_response
- change_model_compartment_details
- change_model_compartment_request_response
- delete_model_request_response
- get_model_request_response
- get_model_type_request_response
- list_models_request_response

### Work Request Management
- work_request_error
- work_request_error_collection
- work_request_log
- work_request_log_collection
- work_request_resource
- work_request_summary
- work_request_summary_collection
- get_work_request_request_response
- list_work_requests_request_response
- list_work_request_logs_request_response

### Dataset Management
- object_list_dataset
- object_storage_dataset
- object_storage_file_name_location
- object_storage_prefix_location
- object_prefix_output_location
- data_science_labeling_dataset
- dataset_details
- input_location
- location_details

### Configuration
- documents_configuration
- configuration_details
- confusion_matrix_details
- class_metrics

### Evaluation
- evaluation_result_collection
- evaluation_result_summary
- evaluation_results

### Capabilities
- capabilities
- capability

### Utility Types
- action_type
- operation_type
- operation_status
- sort_order
- test_and_validation_dataset_strategy
- test_strategy
- error_details
- profile
- text_document

### Client
- ailanguage_aiservicelanguage_client

## Swift SDK Conventions Observed
1. File naming: `snake_case.swift`
2. Type naming: `PascalCase` (converted from snake_case file names)
3. Request/Response pattern: `_request_response.swift` files for API operations
4. Details classes: `_details.swift` for input parameters
5. Result classes: `_result.swift` for output
6. Enum types: separate files (e.g., `action_type.swift`, `operation_type.swift`)
7. Code generation comment: `// Code generated by Go to Swift conversion; DO NOT EDIT` - indicates automated conversion from Go SDK

## Initial Gap Analysis
Comparing Swift SDK (168 files) against Python SDK model list:

### Potentially Missing in Swift SDK
Based on Python SDK documentation, the following models may be missing or named differently:
- `DocumentError` - not found in Swift list
- `Entity` - not found in Swift list (has `entity_document_result`, `hierarchical_entity`, `relation_entity`, `resolved_entity`, `resolved_entity`)
- `HealthEntity` - not found in Swift list (has `health_entity_document_result`)
- `JobCollection` - not found in Swift list (has `job_summary` but no collection)
- `ModelDetails` - not found in Swift list (has various `pre_trained_*_model_details`)
- `Project` - not found in Swift list (has `project_summary`)
- `ProjectCollection` - not found in Swift list
- `PiiEntity` - not found in Swift list (has `pii_entity_document_result`)
- `PiiEntityRelexify` - not found in Swift list
- `KeyPhrase` - EXISTS in Swift
- `MelConcept` - not found in Swift list (has `mel_concept_details`)
- `MetaInfo` - not found in Swift list
- `PreTrainedSummarization` - not found in Swift list
- `PreTrainedTranslationModelDetails` - not found in Swift list
- `Profile` - EXISTS in Swift

### Potentially Extra in Swift SDK
- `ner_model_version` - not in Python list
- `relation_entity` - not in Python list
- `resolved_entities` - not in Python list
- `resolved_entity` - not in Python list
- `sentiment_aspect` - not in Python list
- `sentiment_sentence` - not in Python list
- `text_classification` - not in Python list
- `text_document` - not in Python list

### Naming Differences
Swift uses `snake_case` for files but `PascalCase` for types, consistent with Swift conventions.

The code generation comment suggests Swift SDK is generated from Go SDK, which may explain naming differences from Python SDK.
