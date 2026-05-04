// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum SessionLifecycleStateEnum: String, Codable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = SessionLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .creating
    }
    
    public static func fromString(_ value: String) -> SessionLifecycleStateEnum {
        switch value.uppercased() {
        case "CREATING": return .creating
        case "ACTIVE": return .active
        case "DELETING": return .deleting
        case "DELETED": return .deleted
        case "FAILED": return .failed
        default: return .creating
        }
    }
    
    public static func allValues() -> [SessionLifecycleStateEnum] {
        return [.creating, .active, .deleting, .deleted, .failed]
    }
}
