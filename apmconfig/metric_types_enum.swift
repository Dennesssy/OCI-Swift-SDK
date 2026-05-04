// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum MetricTypesEnum: String, Codable {
    case counter = "COUNTER"
    case gauge = "GAUGE"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = MetricTypesEnum(rawValue: rawValue.uppercased()) ?? .counter
    }
    
    public static func fromString(_ value: String) -> MetricTypesEnum {
        switch value.uppercased() {
        case "COUNTER": return .counter
        case "GAUGE": return .gauge
        default: return .counter
        }
    }
    
    public static func allValues() -> [MetricTypesEnum] {
        return [.counter, .gauge]
    }
}
