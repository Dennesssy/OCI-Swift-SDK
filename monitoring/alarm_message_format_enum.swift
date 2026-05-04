// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum AlarmMessageFormatEnum: String, Codable {
    case raw = "RAW"
    case prettyJson = "PRETTY_JSON"
    case onsOptimized = "ONS_OPTIMIZED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = AlarmMessageFormatEnum(rawValue: rawValue.uppercased()) ?? .raw
    }
    
    public static func fromString(_ value: String) -> AlarmMessageFormatEnum {
        switch value.uppercased() {
        case "RAW": return .raw
        case "PRETTY_JSON": return .prettyJson
        case "ONS_OPTIMIZED": return .onsOptimized
        default: return .raw
        }
    }
    
    public static func allValues() -> [AlarmMessageFormatEnum] {
        return [.raw, .prettyJson, .onsOptimized]
    }
}
