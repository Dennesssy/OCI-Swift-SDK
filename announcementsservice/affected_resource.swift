// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct AffectedResource: Codable {
    public var id: String?
    public var name: String?
    public var type: String?
    public var region: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case region = "region"
    }
    
    public init(id: String? = nil,
                name: String? = nil,
                type: String? = nil,
                region: String? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.region = region
    }
}
