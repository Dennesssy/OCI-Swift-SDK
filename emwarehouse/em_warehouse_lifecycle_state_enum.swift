// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum EmWarehouseLifecycleStateEnum: String, Codable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EmWarehouseLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .creating
    }
    
    public static func fromString(_ value: String) -> EmWarehouseLifecycleStateEnum {
        switch value.uppercased() {
        case "CREATING": return .creating
        case "UPDATING": return .updating
        case "ACTIVE": return .active
        case "DELETING": return .deleting
        case "DELETED": return .deleted
        case "FAILED": return .failed
        default: return .creating
        }
    }
    
    public static func allValues() -> [EmWarehouseLifecycleStateEnum] {
        return [.creating, .updating, .active, .deleting, .deleted, .failed]
    }
}
