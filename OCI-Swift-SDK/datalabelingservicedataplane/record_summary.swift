// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct RecordSummary: Codable {
    public var id: String
    public var name: String
    public var timeCreated: Date
    public var timeUpdated: Date
    public var datasetId: String
    public var compartmentId: String
    public var isLabeled: Bool
    public var lifecycleState: RecordLifecycleStateEnum
    
    
    
    public init(id: String,
                name: String,
                timeCreated: Date,
                timeUpdated: Date,
                datasetId: String,
                compartmentId: String,
                isLabeled: Bool,
                lifecycleState: RecordLifecycleStateEnum) {
        self.id = id
        self.name = name
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.datasetId = datasetId
        self.compartmentId = compartmentId
        self.isLabeled = isLabeled
        self.lifecycleState = lifecycleState
    }
}
