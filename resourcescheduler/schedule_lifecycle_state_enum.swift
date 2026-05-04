// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ScheduleLifecycleStateEnum: String, Codable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case creating = "CREATING"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ScheduleLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .active
    }
    
    public static func fromString(_ value: String) -> ScheduleLifecycleStateEnum {
        switch value.uppercased() {
        case "ACTIVE": return .active
        case "INACTIVE": return .inactive
        case "CREATING": return .creating
        case "UPDATING": return .updating
        case "DELETING": return .deleting
        case "DELETED": return .deleted
        case "FAILED": return .failed
        default: return .active
        }
    }
    
    public static func allValues() -> [ScheduleLifecycleStateEnum] {
        return [.active, .inactive, .creating, .updating, .deleting, .deleted, .failed]
    }
}
