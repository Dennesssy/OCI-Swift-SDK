// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct PingMonitorSummary: Codable {
    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var isEnabled: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: Any]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case displayName = "displayName"
        case compartmentId = "compartmentId"
        case isEnabled = "isEnabled"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                isEnabled: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: Any]]? = nil) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.isEnabled = isEnabled
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
