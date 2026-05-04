// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum IntegrationInstanceLifecycleStateEnum: String, Codable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    case standby = "STANDBY"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = IntegrationInstanceLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .creating
    }
    
    public static func fromString(_ value: String) -> IntegrationInstanceLifecycleStateEnum {
        switch value.uppercased() {
        case "CREATING": return .creating
        case "UPDATING": return .updating
        case "ACTIVE": return .active
        case "INACTIVE": return .inactive
        case "DELETING": return .deleting
        case "DELETED": return .deleted
        case "FAILED": return .failed
        case "STANDBY": return .standby
        default: return .creating
        }
    }
    
    public static func allValues() -> [IntegrationInstanceLifecycleStateEnum] {
        return [.creating, .updating, .active, .inactive, .deleting, .deleted, .failed, .standby]
    }
}
