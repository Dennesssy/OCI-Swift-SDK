// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct DatasetSummary: Codable {
    public var id: String
    public var compartmentId: String
    public var timeCreated: Date
    public var timeUpdated: Date
    public var lifecycleState: DatasetLifecycleStateEnum
    public var annotationFormat: String
    public var displayName: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case compartmentId = "compartmentId"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case lifecycleState = "lifecycleState"
        case annotationFormat = "annotationFormat"
        case displayName = "displayName"
    }
    
    public init(id: String,
                compartmentId: String,
                timeCreated: Date,
                timeUpdated: Date,
                lifecycleState: DatasetLifecycleStateEnum,
                annotationFormat: String,
                displayName: String? = nil) {
        self.id = id
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.annotationFormat = annotationFormat
        self.displayName = displayName
    }
}
