// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct TargetResourceDetails: Codable {
    public var targetResourceId: String?
    public var targetResourceDisplayName: String?
    public var targetResourcePort: Int?
    public var targetResourcePrivateIp: String?
    
    public enum CodingKeys: String, CodingKey {
        case targetResourceId = "targetResourceId"
        case targetResourceDisplayName = "targetResourceDisplayName"
        case targetResourcePort = "targetResourcePort"
        case targetResourcePrivateIp = "targetResourcePrivateIp"
    }
    
    public init(targetResourceId: String? = nil,
                targetResourceDisplayName: String? = nil,
                targetResourcePort: Int? = nil,
                targetResourcePrivateIp: String? = nil) {
        self.targetResourceId = targetResourceId
        self.targetResourceDisplayName = targetResourceDisplayName
        self.targetResourcePort = targetResourcePort
        self.targetResourcePrivateIp = targetResourcePrivateIp
    }
}
