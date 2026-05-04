// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct OccAvailabilitySummary: Codable {
    public var catalogResourceId: String?
    public var region: String?
    public var availabilityDomain: String?
    public var resourceType: String?
    public var resourceShape: String?
    public var resourceVersion: String?
    public var availableCapacity: Int?
    
    public enum CodingKeys: String, CodingKey {
        case catalogResourceId = "catalogResourceId"
        case region = "region"
        case availabilityDomain = "availabilityDomain"
        case resourceType = "resourceType"
        case resourceShape = "resourceShape"
        case resourceVersion = "resourceVersion"
        case availableCapacity = "availableCapacity"
    }
    
    public init(catalogResourceId: String? = nil,
                region: String? = nil,
                availabilityDomain: String? = nil,
                resourceType: String? = nil,
                resourceShape: String? = nil,
                resourceVersion: String? = nil,
                availableCapacity: Int? = nil) {
        self.catalogResourceId = catalogResourceId
        self.region = region
        self.availabilityDomain = availabilityDomain
        self.resourceType = resourceType
        self.resourceShape = resourceShape
        self.resourceVersion = resourceVersion
        self.availableCapacity = availableCapacity
    }
}
