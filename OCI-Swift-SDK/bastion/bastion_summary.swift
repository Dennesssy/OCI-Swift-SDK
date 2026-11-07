// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct BastionSummary: Codable {
    public var id: String
    public var name: String
    public var compartmentId: String
    public var targetVcnId: String
    public var targetSubnetId: String
    public var bastionType: String
    public var timeCreated: Date
    public var lifecycleState: BastionLifecycleStateEnum
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    
    
    
    public init(id: String,
                name: String,
                compartmentId: String,
                targetVcnId: String,
                targetSubnetId: String,
                bastionType: String,
                timeCreated: Date,
                lifecycleState: BastionLifecycleStateEnum,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil) {
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.targetVcnId = targetVcnId
        self.targetSubnetId = targetSubnetId
        self.bastionType = bastionType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }
}
