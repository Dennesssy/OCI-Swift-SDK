// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct InitialImportDatasetConfiguration: Codable {
    public var importMetadata: ImportMetadataPath?
    
    public enum CodingKeys: String, CodingKey {
        case importMetadata = "importMetadata"
    }
    
    public init(importMetadata: ImportMetadataPath? = nil) {
        self.importMetadata = importMetadata
    }
}
