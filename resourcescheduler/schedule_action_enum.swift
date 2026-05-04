// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ScheduleActionEnum: String, Codable {
    case startResource = "START_RESOURCE"
    case stopResource = "STOP_RESOURCE"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ScheduleActionEnum(rawValue: rawValue.uppercased()) ?? .startResource
    }
    
    public static func fromString(_ value: String) -> ScheduleActionEnum {
        switch value.uppercased() {
        case "START_RESOURCE": return .startResource
        case "STOP_RESOURCE": return .stopResource
        default: return .startResource
        }
    }
    
    public static func allValues() -> [ScheduleActionEnum] {
        return [.startResource, .stopResource]
    }
}
