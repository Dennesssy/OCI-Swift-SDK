// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct MetadataDetails: Codable {
    public var resourceVersion: String?
    public var resourceVersionTime: Date?
    
    public enum CodingKeys: String, CodingKey {
        case resourceVersion = "resourceVersion"
        case resourceVersionTime = "resourceVersionTime"
    }
    
    public init(resourceVersion: String? = nil,
                resourceVersionTime: Date? = nil) {
        self.resourceVersion = resourceVersion
        self.resourceVersionTime = resourceVersionTime
    }
}
