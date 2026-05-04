// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct AttachmentDetails: Codable {
    public var type: String?
    public var instanceUrl: String?
    public var subnetId: String?
    
    public enum CodingKeys: String, CodingKey {
        case type = "type"
        case instanceUrl = "instanceUrl"
        case subnetId = "subnetId"
    }
    
    public init(type: String? = nil,
                instanceUrl: String? = nil,
                subnetId: String? = nil) {
        self.type = type
        self.instanceUrl = instanceUrl
        self.subnetId = subnetId
    }
}
