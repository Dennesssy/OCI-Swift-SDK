// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct EmWarehouseSummary: Codable {
    public var operationsInsightsWarehouseId: String
    public var id: String
    public var displayName: String
    public var compartmentId: String
    public var emWarehouseType: String
    public var timeCreated: Date
    public var lifecycleState: EmWarehouseLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var latestEtlRunStatus: String?
    public var latestEtlRunMessage: String?
    public var latestEtlRunTime: String?
    public var emBridgeId: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    
    
    
    public init(operationsInsightsWarehouseId: String,
                id: String,
                displayName: String,
                compartmentId: String,
                emWarehouseType: String,
                timeCreated: Date,
                lifecycleState: EmWarehouseLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                latestEtlRunStatus: String? = nil,
                latestEtlRunMessage: String? = nil,
                latestEtlRunTime: String? = nil,
                emBridgeId: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil) {
        self.operationsInsightsWarehouseId = operationsInsightsWarehouseId
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.emWarehouseType = emWarehouseType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.latestEtlRunStatus = latestEtlRunStatus
        self.latestEtlRunMessage = latestEtlRunMessage
        self.latestEtlRunTime = latestEtlRunTime
        self.emBridgeId = emBridgeId
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }
}
