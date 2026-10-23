// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct OccAvailabilityCatalog: Codable {
    public var id: String
    public var namespace: NamespaceEnum
    public var compartmentId: String
    public var displayName: String
    public var occCustomerGroupId: String
    public var catalogState: OccAvailabilityCatalogCatalogStateEnum
    public var metadataDetails: MetadataDetails
    public var timeCreated: Date
    public var timeUpdated: Date
    public var lifecycleState: OccAvailabilityCatalogLifecycleStateEnum
    public var description: String?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var details: [OccAvailabilitySummary]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case namespace = "namespace"
        case compartmentId = "compartmentId"
        case displayName = "displayName"
        case occCustomerGroupId = "occCustomerGroupId"
        case catalogState = "catalogState"
        case metadataDetails = "metadataDetails"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case lifecycleState = "lifecycleState"
        case description = "description"
        case lifecycleDetails = "lifecycleDetails"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case systemTags = "systemTags"
        case details = "details"
    }
    
    public init(id: String,
                namespace: NamespaceEnum,
                compartmentId: String,
                displayName: String,
                occCustomerGroupId: String,
                catalogState: OccAvailabilityCatalogCatalogStateEnum,
                metadataDetails: MetadataDetails,
                timeCreated: Date,
                timeUpdated: Date,
                lifecycleState: OccAvailabilityCatalogLifecycleStateEnum,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                details: [OccAvailabilitySummary]? = nil) {
        self.id = id
        self.namespace = namespace
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.occCustomerGroupId = occCustomerGroupId
        self.catalogState = catalogState
        self.metadataDetails = metadataDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.details = details
    }
}
