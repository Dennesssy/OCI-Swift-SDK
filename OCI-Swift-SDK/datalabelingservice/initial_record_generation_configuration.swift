// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct InitialRecordGenerationConfiguration: Codable {
    public var generateRecords: Bool?
    
    public enum CodingKeys: String, CodingKey {
        case generateRecords = "generateRecords"
    }
    
    public init(generateRecords: Bool? = nil) {
        self.generateRecords = generateRecords
    }
}
