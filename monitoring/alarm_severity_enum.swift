// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum AlarmSeverityEnum: String, Codable {
    case critical = "CRITICAL"
    case error = "ERROR"
    case warning = "WARNING"
    case info = "INFO"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = AlarmSeverityEnum(rawValue: rawValue.uppercased()) ?? .critical
    }
    
    public static func fromString(_ value: String) -> AlarmSeverityEnum {
        switch value.uppercased() {
        case "CRITICAL": return .critical
        case "ERROR": return .error
        case "WARNING": return .warning
        case "INFO": return .info
        default: return .critical
        }
    }
    
    public static func allValues() -> [AlarmSeverityEnum] {
        return [.critical, .error, .warning, .info]
    }
}
