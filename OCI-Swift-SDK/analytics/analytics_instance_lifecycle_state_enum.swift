// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum AnalyticsInstanceLifecycleStateEnum: String, Codable {
    case active = "ACTIVE"
    case creating = "CREATING"
    case deleted = "DELETED"
    case deleting = "DELETING"
    case failed = "FAILED"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = AnalyticsInstanceLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .active
    }
    
    public static func fromString(_ value: String) -> AnalyticsInstanceLifecycleStateEnum {
        switch value.uppercased() {
        case "ACTIVE": return .active
        case "CREATING": return .creating
        case "DELETED": return .deleted
        case "DELETING": return .deleting
        case "FAILED": return .failed
        case "INACTIVE": return .inactive
        case "UPDATING": return .updating
        default: return .active
        }
    }
    
    public static func allValues() -> [AnalyticsInstanceLifecycleStateEnum] {
        return [.active, .creating, .deleted, .deleting, .failed, .inactive, .updating]
    }
}
