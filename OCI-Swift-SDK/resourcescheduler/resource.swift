// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Resource: Codable {
    public var resourceId: String
    public var resourceType: String
    
    public enum CodingKeys: String, CodingKey {
        case resourceId = "resourceId"
        case resourceType = "resourceType"
    }
    
    public init(resourceId: String, resourceType: String) {
        self.resourceId = resourceId
        self.resourceType = resourceType
    }
}
