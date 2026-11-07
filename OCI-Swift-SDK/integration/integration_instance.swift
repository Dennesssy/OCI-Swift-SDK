// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct IntegrationInstance: Codable {
    public var id: String
    public var displayName: String
    public var compartmentId: String
    public var integrationInstanceType: IntegrationInstanceTypeEnum
    public var isByol: Bool
    public var instanceUrl: String
    public var messagePacks: Int
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: IntegrationInstanceLifecycleStateEnum?
    public var stateMessage: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var isFileServerEnabled: Bool?
    public var isVisualBuilderEnabled: Bool?
    public var customEndpoint: CustomEndpointDetails?
    public var alternateCustomEndpoints: [CustomEndpointDetails]?
    
    
    
    public init(id: String,
                displayName: String,
                compartmentId: String,
                integrationInstanceType: IntegrationInstanceTypeEnum,
                isByol: Bool,
                instanceUrl: String,
                messagePacks: Int,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: IntegrationInstanceLifecycleStateEnum? = nil,
                stateMessage: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                isFileServerEnabled: Bool? = nil,
                isVisualBuilderEnabled: Bool? = nil,
                customEndpoint: CustomEndpointDetails? = nil,
                alternateCustomEndpoints: [CustomEndpointDetails]? = nil) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.integrationInstanceType = integrationInstanceType
        self.isByol = isByol
        self.instanceUrl = instanceUrl
        self.messagePacks = messagePacks
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.stateMessage = stateMessage
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.isFileServerEnabled = isFileServerEnabled
        self.isVisualBuilderEnabled = isVisualBuilderEnabled
        self.customEndpoint = customEndpoint
        self.alternateCustomEndpoints = alternateCustomEndpoints
    }
}
