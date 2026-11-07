// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct IdcsInfoDetails: Codable {
    public var idcsEndpoint: String?
    public var idcsClientId: String?
    public var idcsTenantId: String?
    
    
    
    public init(idcsEndpoint: String? = nil,
                idcsClientId: String? = nil,
                idcsTenantId: String? = nil) {
        self.idcsEndpoint = idcsEndpoint
        self.idcsClientId = idcsClientId
        self.idcsTenantId = idcsTenantId
    }
}
