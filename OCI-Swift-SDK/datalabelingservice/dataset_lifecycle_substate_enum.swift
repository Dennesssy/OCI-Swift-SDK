// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum DatasetLifecycleSubstateEnum: String, Codable {
    case importDataset = "IMPORT_DATASET"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = DatasetLifecycleSubstateEnum(rawValue: rawValue.uppercased()) ?? .importDataset
    }
    
    public static func fromString(_ value: String) -> DatasetLifecycleSubstateEnum {
        switch value.uppercased() {
        case "IMPORT_DATASET": return .importDataset
        default: return .importDataset
        }
    }
    
    public static func allValues() -> [DatasetLifecycleSubstateEnum] {
        return [.importDataset]
    }
}
