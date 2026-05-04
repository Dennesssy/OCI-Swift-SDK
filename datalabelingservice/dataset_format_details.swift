// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct DatasetFormatDetails: Codable {
    public var formatType: String?
    
    public enum CodingKeys: String, CodingKey {
        case formatType = "formatType"
    }
    
    public init(formatType: String? = nil) {
        self.formatType = formatType
    }
}
