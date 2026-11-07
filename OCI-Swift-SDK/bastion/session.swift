// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Session: Codable {
    public var id: String
    public var bastionId: String
    public var bastionName: String
    public var targetResourceDetails: TargetResourceDetails
    public var sessionType: SessionTypeEnum
    public var lifecycleState: SessionLifecycleStateEnum
    public var timeCreated: Date
    public var timeUpdated: Date?
    
    
    
    public init(id: String,
                bastionId: String,
                bastionName: String,
                targetResourceDetails: TargetResourceDetails,
                sessionType: SessionTypeEnum,
                lifecycleState: SessionLifecycleStateEnum,
                timeCreated: Date,
                timeUpdated: Date? = nil) {
        self.id = id
        self.bastionId = bastionId
        self.bastionName = bastionName
        self.targetResourceDetails = targetResourceDetails
        self.sessionType = sessionType
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }
}
