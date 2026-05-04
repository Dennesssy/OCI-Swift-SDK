// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum DatasetLifecycleStateEnum: String, Codable {
    case creating = "CREATING"
    case updating = "UPDATING"
    case active = "ACTIVE"
    case needsAttention = "NEEDS_ATTENTION"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = DatasetLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .creating
    }
    
    public static func fromString(_ value: String) -> DatasetLifecycleStateEnum {
        switch value.uppercased() {
        case "CREATING": return .creating
        case "UPDATING": return .updating
        case "ACTIVE": return .active
        case "NEEDS_ATTENTION": return .needsAttention
        case "DELETING": return .deleting
        case "DELETED": return .deleted
        case "FAILED": return .failed
        default: return .creating
        }
    }
    
    public static func allValues() -> [DatasetLifecycleStateEnum] {
        return [.creating, .updating, .active, .needsAttention, .deleting, .deleted, .failed]
    }
}
