// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ScheduleRecurrenceTypeEnum: String, Codable {
    case cron = "CRON"
    case ical = "ICAL"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ScheduleRecurrenceTypeEnum(rawValue: rawValue.uppercased()) ?? .cron
    }
    
    public static func fromString(_ value: String) -> ScheduleRecurrenceTypeEnum {
        switch value.uppercased() {
        case "CRON": return .cron
        case "ICAL": return .ical
        default: return .cron
        }
    }
    
    public static func allValues() -> [ScheduleRecurrenceTypeEnum] {
        return [.cron, .ical]
    }
}
