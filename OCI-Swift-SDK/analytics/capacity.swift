// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Capacity: Codable {
    public var capacityType: String?
    public var capacityValue: Int?
    
    
    
    public init(capacityType: String? = nil,
                capacityValue: Int? = nil) {
        self.capacityType = capacityType
        self.capacityValue = capacityValue
    }
}
