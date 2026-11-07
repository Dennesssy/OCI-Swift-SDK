// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Incident: Codable {
    public var incidentKey: String?
    public var csi: String?
    public var problemType: String?
    
    
    
    public init(incidentKey: String? = nil,
                csi: String? = nil,
                problemType: String? = nil) {
        self.incidentKey = incidentKey
        self.csi = csi
        self.problemType = problemType
    }
}
