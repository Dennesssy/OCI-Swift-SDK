// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum RecordLifecycleStateEnum: String, Codable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case deleted = "DELETED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = RecordLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .active
    }
    
    public static func fromString(_ value: String) -> RecordLifecycleStateEnum {
        switch value.uppercased() {
        case "ACTIVE": return .active
        case "INACTIVE": return .inactive
        case "DELETED": return .deleted
        default: return .active
        }
    }
    
    public static func allValues() -> [RecordLifecycleStateEnum] {
        return [.active, .inactive, .deleted]
    }
}
