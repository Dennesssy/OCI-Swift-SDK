// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ConfigTypesEnum: String, Codable {
    case spanFilter = "SPAN_FILTER"
    case metricGroup = "METRIC_GROUP"
    case apdex = "APDEX"
    case options = "OPTIONS"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ConfigTypesEnum(rawValue: rawValue.uppercased()) ?? .spanFilter
    }
    
    public static func fromString(_ value: String) -> ConfigTypesEnum {
        switch value.uppercased() {
        case "SPAN_FILTER": return .spanFilter
        case "METRIC_GROUP": return .metricGroup
        case "APDEX": return .apdex
        case "OPTIONS": return .options
        default: return .spanFilter
        }
    }
    
    public static func allValues() -> [ConfigTypesEnum] {
        return [.spanFilter, .metricGroup, .apdex, .options]
    }
}
