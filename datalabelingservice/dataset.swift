// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct Dataset: Codable {
    public var id: String
    public var compartmentId: String
    public var timeCreated: Date
    public var timeUpdated: Date
    public var lifecycleState: DatasetLifecycleStateEnum
    public var annotationFormat: String
    public var datasetSourceDetails: DatasetSourceDetails
    public var datasetFormatDetails: DatasetFormatDetails
    public var labelSet: LabelSet
    public var displayName: String?
    public var description: String?
    public var lifecycleDetails: String?
    public var lifecycleSubstate: DatasetLifecycleSubstateEnum?
    public var initialRecordGenerationConfiguration: InitialRecordGenerationConfiguration?
    public var initialImportDatasetConfiguration: InitialImportDatasetConfiguration?
    public var labelingInstructions: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case compartmentId = "compartmentId"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case lifecycleState = "lifecycleState"
        case annotationFormat = "annotationFormat"
        case datasetSourceDetails = "datasetSourceDetails"
        case datasetFormatDetails = "datasetFormatDetails"
        case labelSet = "labelSet"
        case displayName = "displayName"
        case description = "description"
        case lifecycleDetails = "lifecycleDetails"
        case lifecycleSubstate = "lifecycleSubstate"
        case initialRecordGenerationConfiguration = "initialRecordGenerationConfiguration"
        case initialImportDatasetConfiguration = "initialImportDatasetConfiguration"
        case labelingInstructions = "labelingInstructions"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(id: String,
                compartmentId: String,
                timeCreated: Date,
                timeUpdated: Date,
                lifecycleState: DatasetLifecycleStateEnum,
                annotationFormat: String,
                datasetSourceDetails: DatasetSourceDetails,
                datasetFormatDetails: DatasetFormatDetails,
                labelSet: LabelSet,
                displayName: String? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                lifecycleSubstate: DatasetLifecycleSubstateEnum? = nil,
                initialRecordGenerationConfiguration: InitialRecordGenerationConfiguration? = nil,
                initialImportDatasetConfiguration: InitialImportDatasetConfiguration? = nil,
                labelingInstructions: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil) {
        self.id = id
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.annotationFormat = annotationFormat
        self.datasetSourceDetails = datasetSourceDetails
        self.datasetFormatDetails = datasetFormatDetails
        self.labelSet = labelSet
        self.displayName = displayName
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleSubstate = lifecycleSubstate
        self.initialRecordGenerationConfiguration = initialRecordGenerationConfiguration
        self.initialImportDatasetConfiguration = initialImportDatasetConfiguration
        self.labelingInstructions = labelingInstructions
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
