// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Stream: Codable {
    public var name: String
    public var id: String
    public var partitions: Int
    public var retentionInHours: Int
    public var compartmentId: String
    public var streamPoolId: String
    public var lifecycleState: StreamLifecycleStateEnum
    public var timeCreated: Date
    public var messagesEndpoint: String
    public var lifecycleStateDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: Any]]?
    
    public enum CodingKeys: String, CodingKey {
        case name = "name"
        case id = "id"
        case partitions = "partitions"
        case retentionInHours = "retentionInHours"
        case compartmentId = "compartmentId"
        case streamPoolId = "streamPoolId"
        case lifecycleState = "lifecycleState"
        case timeCreated = "timeCreated"
        case messagesEndpoint = "messagesEndpoint"
        case lifecycleStateDetails = "lifecycleStateDetails"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(name: String,
                id: String,
                partitions: Int,
                retentionInHours: Int,
                compartmentId: String,
                streamPoolId: String,
                lifecycleState: StreamLifecycleStateEnum,
                timeCreated: Date,
                messagesEndpoint: String,
                lifecycleStateDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: Any]]? = nil) {
        self.name = name
        self.id = id
        self.partitions = partitions
        self.retentionInHours = retentionInHours
        self.compartmentId = compartmentId
        self.streamPoolId = streamPoolId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.messagesEndpoint = messagesEndpoint
        self.lifecycleStateDetails = lifecycleStateDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
