// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum BaseAnnouncementTimeOneTypeEnum: String, Codable {
    case actionRequiredBy = "ACTION_REQUIRED_BY"
    case newStartTime = "NEW_START_TIME"
    case originalEndTime = "ORIGINAL_END_TIME"
    case reportDate = "REPORT_DATE"
    case startTime = "START_TIME"
    case timeDetected = "TIME_DETECTED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BaseAnnouncementTimeOneTypeEnum(rawValue: rawValue.uppercased()) ?? .actionRequiredBy
    }
    
    public static func fromString(_ value: String) -> BaseAnnouncementTimeOneTypeEnum {
        switch value.uppercased() {
        case "ACTION_REQUIRED_BY": return .actionRequiredBy
        case "NEW_START_TIME": return .newStartTime
        case "ORIGINAL_END_TIME": return .originalEndTime
        case "REPORT_DATE": return .reportDate
        case "START_TIME": return .startTime
        case "TIME_DETECTED": return .timeDetected
        default: return .actionRequiredBy
        }
    }
    
    public static func allValues() -> [BaseAnnouncementTimeOneTypeEnum] {
        return [.actionRequiredBy, .newStartTime, .originalEndTime, .reportDate, .startTime, .timeDetected]
    }
}
