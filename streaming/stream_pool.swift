// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct StreamPool: Codable {
    public var name: String
    public var id: String
    public var compartmentId: String
    public var lifecycleState: StreamLifecycleStateEnum
    public var timeCreated: Date
    public var kafkaSettings: KafkaSettings?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    
    public enum CodingKeys: String, CodingKey {
        case name = "name"
        case id = "id"
        case compartmentId = "compartmentId"
        case lifecycleState = "lifecycleState"
        case timeCreated = "timeCreated"
        case kafkaSettings = "kafkaSettings"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(name: String,
                id: String,
                compartmentId: String,
                lifecycleState: StreamLifecycleStateEnum,
                timeCreated: Date,
                kafkaSettings: KafkaSettings? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil) {
        self.name = name
        self.id = id
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.kafkaSettings = kafkaSettings
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
