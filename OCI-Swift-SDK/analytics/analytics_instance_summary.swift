// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct AnalyticsInstanceSummary: Codable {
    public var id: String
    public var compartmentId: String
    public var name: String
    public var lifecycleState: AnalyticsInstanceLifecycleStateEnum
    public var timeCreated: Date
    public var timeUpdated: Date
    public var description: String?
    public var featureSet: String?
    public var licenseType: String?
    public var capacity: Capacity?
    
    
    
    public init(id: String,
                compartmentId: String,
                name: String,
                lifecycleState: AnalyticsInstanceLifecycleStateEnum,
                timeCreated: Date,
                timeUpdated: Date,
                description: String? = nil,
                featureSet: String? = nil,
                licenseType: String? = nil,
                capacity: Capacity? = nil) {
        self.id = id
        self.compartmentId = compartmentId
        self.name = name
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.description = description
        self.featureSet = featureSet
        self.licenseType = licenseType
        self.capacity = capacity
    }
}
