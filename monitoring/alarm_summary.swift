// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct AlarmSummary: Codable {
    public var id: String
    public var displayName: String
    public var compartmentId: String
    public var metricCompartmentId: String
    public var namespace: String
    public var query: String
    public var severity: AlarmSummarySeverityEnum
    public var destinations: [String]
    public var isEnabled: Bool
    public var lifecycleState: AlarmLifecycleStateEnum
    public var suppression: Suppression?
    public var isNotificationsPerMetricDimensionEnabled: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var overrides: [AlarmOverride]?
    public var ruleName: String?
    public var notificationVersion: String?
    public var notificationTitle: String?
    public var evaluationSlackDuration: String?
    public var alarmSummary: String?
    public var resourceGroup: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case displayName = "displayName"
        case compartmentId = "compartmentId"
        case metricCompartmentId = "metricCompartmentId"
        case namespace = "namespace"
        case query = "query"
        case severity = "severity"
        case destinations = "destinations"
        case isEnabled = "isEnabled"
        case lifecycleState = "lifecycleState"
        case suppression = "suppression"
        case isNotificationsPerMetricDimensionEnabled = "isNotificationsPerMetricDimensionEnabled"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case overrides = "overrides"
        case ruleName = "ruleName"
        case notificationVersion = "notificationVersion"
        case notificationTitle = "notificationTitle"
        case evaluationSlackDuration = "evaluationSlackDuration"
        case alarmSummary = "alarmSummary"
        case resourceGroup = "resourceGroup"
    }
    
    public init(id: String,
                displayName: String,
                compartmentId: String,
                metricCompartmentId: String,
                namespace: String,
                query: String,
                severity: AlarmSummarySeverityEnum,
                destinations: [String],
                isEnabled: Bool,
                lifecycleState: AlarmLifecycleStateEnum,
                suppression: Suppression? = nil,
                isNotificationsPerMetricDimensionEnabled: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                overrides: [AlarmOverride]? = nil,
                ruleName: String? = nil,
                notificationVersion: String? = nil,
                notificationTitle: String? = nil,
                evaluationSlackDuration: String? = nil,
                alarmSummary: String? = nil,
                resourceGroup: String? = nil) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.metricCompartmentId = metricCompartmentId
        self.namespace = namespace
        self.query = query
        self.severity = severity
        self.destinations = destinations
        self.isEnabled = isEnabled
        self.lifecycleState = lifecycleState
        self.suppression = suppression
        self.isNotificationsPerMetricDimensionEnabled = isNotificationsPerMetricDimensionEnabled
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.overrides = overrides
        self.ruleName = ruleName
        self.notificationVersion = notificationVersion
        self.notificationTitle = notificationTitle
        self.evaluationSlackDuration = evaluationSlackDuration
        self.alarmSummary = alarmSummary
        self.resourceGroup = resourceGroup
    }
}
