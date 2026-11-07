// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct OccAvailabilityCatalogSummary: Codable {
    public var id: String
    public var namespace: NamespaceEnum
    public var compartmentId: String
    public var displayName: String
    public var occCustomerGroupId: String
    public var catalogState: OccAvailabilityCatalogCatalogStateEnum
    public var timeCreated: Date
    public var timeUpdated: Date
    public var lifecycleState: OccAvailabilityCatalogLifecycleStateEnum
    
    
    
    public init(id: String,
                namespace: NamespaceEnum,
                compartmentId: String,
                displayName: String,
                occCustomerGroupId: String,
                catalogState: OccAvailabilityCatalogCatalogStateEnum,
                timeCreated: Date,
                timeUpdated: Date,
                lifecycleState: OccAvailabilityCatalogLifecycleStateEnum) {
        self.id = id
        self.namespace = namespace
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.occCustomerGroupId = occCustomerGroupId
        self.catalogState = catalogState
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
    }
}
