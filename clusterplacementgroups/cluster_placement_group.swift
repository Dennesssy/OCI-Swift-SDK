// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct ClusterPlacementGroup: Codable {
    public var id: String
    public var name: String
    public var description: String
    public var compartmentId: String
    public var availabilityDomain: String
    public var clusterPlacementGroupType: ClusterPlacementGroupTypeEnum
    public var timeCreated: Date
    public var lifecycleState: ClusterPlacementGroupLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: Any]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var placementInstruction: PlacementInstructionDetails?
    public var capabilities: CapabilitiesCollection?
    public var systemTags: [String: [String: Any]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case compartmentId = "compartmentId"
        case availabilityDomain = "availabilityDomain"
        case clusterPlacementGroupType = "clusterPlacementGroupType"
        case timeCreated = "timeCreated"
        case lifecycleState = "lifecycleState"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case timeUpdated = "timeUpdated"
        case lifecycleDetails = "lifecycleDetails"
        case placementInstruction = "placementInstruction"
        case capabilities = "capabilities"
        case systemTags = "systemTags"
    }
    
    public init(id: String,
                name: String,
                description: String,
                compartmentId: String,
                availabilityDomain: String,
                clusterPlacementGroupType: ClusterPlacementGroupTypeEnum,
                timeCreated: Date,
                lifecycleState: ClusterPlacementGroupLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: Any]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                placementInstruction: PlacementInstructionDetails? = nil,
                capabilities: CapabilitiesCollection? = nil,
                systemTags: [String: [String: Any]]? = nil) {
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
        self.placementInstruction = placementInstruction
        self.capabilities = capabilities
        self.systemTags = systemTags
    }
}
