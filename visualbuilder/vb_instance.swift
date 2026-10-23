// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct VbInstance: Codable {
    public var id: String
    public var displayName: String
    public var compartmentId: String
    public var lifecycleState: VbInstanceLifecycleStateEnum
    public var instanceUrl: String
    public var nodeCount: Int
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var stateMessage: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var isVisualBuilderEnabled: Bool?
    public var customEndpoint: CustomEndpointDetails?
    public var alternateCustomEndpoints: [CustomEndpointDetails]?
    public var consumptionModel: VbInstanceConsumptionModelEnum?
    public var idcsInfo: IdcsInfoDetails?
    public var attachments: [AttachmentDetails]?
    public var serviceNatGatewayIp: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case displayName = "displayName"
        case compartmentId = "compartmentId"
        case lifecycleState = "lifecycleState"
        case instanceUrl = "instanceUrl"
        case nodeCount = "nodeCount"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case stateMessage = "stateMessage"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case systemTags = "systemTags"
        case isVisualBuilderEnabled = "isVisualBuilderEnabled"
        case customEndpoint = "customEndpoint"
        case alternateCustomEndpoints = "alternateCustomEndpoints"
        case consumptionModel = "consumptionModel"
        case idcsInfo = "idcsInfo"
        case attachments = "attachments"
        case serviceNatGatewayIp = "serviceNatGatewayIp"
    }
    
    public init(id: String,
                displayName: String,
                compartmentId: String,
                lifecycleState: VbInstanceLifecycleStateEnum,
                instanceUrl: String,
                nodeCount: Int,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                stateMessage: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                isVisualBuilderEnabled: Bool? = nil,
                customEndpoint: CustomEndpointDetails? = nil,
                alternateCustomEndpoints: [CustomEndpointDetails]? = nil,
                consumptionModel: VbInstanceConsumptionModelEnum? = nil,
                idcsInfo: IdcsInfoDetails? = nil,
                attachments: [AttachmentDetails]? = nil,
                serviceNatGatewayIp: String? = nil) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.instanceUrl = instanceUrl
        self.nodeCount = nodeCount
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.stateMessage = stateMessage
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.isVisualBuilderEnabled = isVisualBuilderEnabled
        self.customEndpoint = customEndpoint
        self.alternateCustomEndpoints = alternateCustomEndpoints
        self.consumptionModel = consumptionModel
        self.idcsInfo = idcsInfo
        self.attachments = attachments
        self.serviceNatGatewayIp = serviceNatGatewayIp
    }
}
