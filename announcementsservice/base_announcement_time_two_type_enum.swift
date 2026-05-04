// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum BaseAnnouncementTimeTwoTypeEnum: String, Codable {
    case endTime = "END_TIME"
    case newEndTime = "NEW_END_TIME"
    case estimatedEndTime = "ESTIMATED_END_TIME"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BaseAnnouncementTimeTwoTypeEnum(rawValue: rawValue.uppercased()) ?? .endTime
    }
    
    public static func fromString(_ value: String) -> BaseAnnouncementTimeTwoTypeEnum {
        switch value.uppercased() {
        case "END_TIME": return .endTime
        case "NEW_END_TIME": return .newEndTime
        case "ESTIMATED_END_TIME": return .estimatedEndTime
        default: return .endTime
        }
    }
    
    public static func allValues() -> [BaseAnnouncementTimeTwoTypeEnum] {
        return [.endTime, .newEndTime, .estimatedEndTime]
    }
}
