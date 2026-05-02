// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct ResourceSummary: Codable {
    public var dailyUnitDisplayName: String?
    public var hourlyUnitDisplayName: String?
    public var rawUnitDisplayName: String?
    public var usageDataType: ResourceSummaryUsageDataTypeEnum?
    public var name: String?
    public var servicename: String?
    public var description: String?
    public var instanceType: String?
    public var isPurchased: Bool?
    public var childResources: [String]?
    public var skus: [SkuProducts]?
    
    public enum CodingKeys: String, CodingKey {
        case dailyUnitDisplayName = "dailyUnitDisplayName"
        case hourlyUnitDisplayName = "hourlyUnitDisplayName"
        case rawUnitDisplayName = "rawUnitDisplayName"
        case usageDataType = "usageDataType"
        case name = "name"
        case servicename = "servicename"
        case description = "description"
        case instanceType = "instanceType"
        case isPurchased = "isPurchased"
        case childResources = "childResources"
        case skus = "skus"
    }
    
    public init(dailyUnitDisplayName: String? = nil,
                hourlyUnitDisplayName: String? = nil,
                rawUnitDisplayName: String? = nil,
                usageDataType: ResourceSummaryUsageDataTypeEnum? = nil,
                name: String? = nil,
                servicename: String? = nil,
                description: String? = nil,
                instanceType: String? = nil,
                isPurchased: Bool? = nil,
                childResources: [String]? = nil,
                skus: [SkuProducts]? = nil) {
        self.dailyUnitDisplayName = dailyUnitDisplayName
        self.hourlyUnitDisplayName = hourlyUnitDisplayName
        self.rawUnitDisplayName = rawUnitDisplayName
        self.usageDataType = usageDataType
        self.name = name
        self.servicename = servicename
        self.description = description
        self.instanceType = instanceType
        self.isPurchased = isPurchased
        self.childResources = childResources
        self.skus = skus
    }
}
