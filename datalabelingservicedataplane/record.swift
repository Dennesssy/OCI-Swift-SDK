// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct Record: Codable {
    public var id: String
    public var name: String
    public var timeCreated: Date
    public var timeUpdated: Date
    public var datasetId: String
    public var compartmentId: String
    public var sourceDetails: SourceDetails
    public var isLabeled: Bool
    public var lifecycleState: RecordLifecycleStateEnum
    public var recordMetadata: RecordMetadata?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case datasetId = "datasetId"
        case compartmentId = "compartmentId"
        case sourceDetails = "sourceDetails"
        case isLabeled = "isLabeled"
        case lifecycleState = "lifecycleState"
        case recordMetadata = "recordMetadata"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(id: String,
                name: String,
                timeCreated: Date,
                timeUpdated: Date,
                datasetId: String,
                compartmentId: String,
                sourceDetails: SourceDetails,
                isLabeled: Bool,
                lifecycleState: RecordLifecycleStateEnum,
                recordMetadata: RecordMetadata? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil) {
        self.id = id
        self.name = name
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.datasetId = datasetId
        self.compartmentId = compartmentId
        self.sourceDetails = sourceDetails
        self.isLabeled = isLabeled
        self.lifecycleState = lifecycleState
        self.recordMetadata = recordMetadata
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
