// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct ClusterPlacementGroupSummary: Codable {
    public var id: String
    public var name: String
    public var description: String
    public var compartmentId: String
    public var availabilityDomain: String
    public var clusterPlacementGroupType: ClusterPlacementGroupTypeEnum
    public var timeCreated: Date
    public var lifecycleState: ClusterPlacementGroupLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    
    
    
    public init(id: String,
                name: String,
                description: String,
                compartmentId: String,
                availabilityDomain: String,
                clusterPlacementGroupType: ClusterPlacementGroupTypeEnum,
                timeCreated: Date,
                lifecycleState: ClusterPlacementGroupLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.clusterPlacementGroupType = clusterPlacementGroupType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }
}
