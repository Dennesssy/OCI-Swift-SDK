// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ResourcePowerActionActionEnum: String, Codable {
    case stop = "STOP"
    case start = "START"
    case softreset = "SOFTRESET"
    case reset = "RESET"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ResourcePowerActionActionEnum(rawValue: rawValue.uppercased()) ?? .stop
    }
    
    public static func fromString(_ value: String) -> ResourcePowerActionActionEnum {
        switch value.uppercased() {
        case "STOP": return .stop
        case "START": return .start
        case "SOFTRESET": return .softreset
        case "RESET": return .reset
        default: return .stop
        }
    }
    
    public static func allValues() -> [ResourcePowerActionActionEnum] {
        return [.stop, .start, .softreset, .reset]
    }
}
