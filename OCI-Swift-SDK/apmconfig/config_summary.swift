// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct ConfigSummary: Codable {
    public var id: String?
    public var configType: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case configType = "configType"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
    }
    
    public init(id: String? = nil,
                configType: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil) {
        self.id = id
        self.configType = configType
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }
}
