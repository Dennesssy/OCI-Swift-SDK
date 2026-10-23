// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct Config: Codable {
    public var id: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var createdBy: String?
    public var updatedBy: String?
    public var etag: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var configType: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case createdBy = "createdBy"
        case updatedBy = "updatedBy"
        case etag = "etag"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case configType = "configType"
    }
    
    public init(id: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                createdBy: String? = nil,
                updatedBy: String? = nil,
                etag: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                configType: String? = nil) {
        self.id = id
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.createdBy = createdBy
        self.updatedBy = updatedBy
        self.etag = etag
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.configType = configType
    }
}
