// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct AnalyticsInstance: Codable {
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
    public var endpointUrl: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case compartmentId = "compartmentId"
        case name = "name"
        case lifecycleState = "lifecycleState"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case description = "description"
        case featureSet = "featureSet"
        case licenseType = "licenseType"
        case capacity = "capacity"
        case endpointUrl = "endpointUrl"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(id: String,
                compartmentId: String,
                name: String,
                lifecycleState: AnalyticsInstanceLifecycleStateEnum,
                timeCreated: Date,
                timeUpdated: Date,
                description: String? = nil,
                featureSet: String? = nil,
                licenseType: String? = nil,
                capacity: Capacity? = nil,
                endpointUrl: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil) {
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
        self.endpointUrl = endpointUrl
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
