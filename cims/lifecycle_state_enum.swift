// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum LifecycleStateEnum: String, Codable {
    case active = "ACTIVE"
    case closed = "CLOSED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = LifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .active
    }
    
    public static func fromString(_ value: String) -> LifecycleStateEnum {
        switch value.uppercased() {
        case "ACTIVE": return .active
        case "CLOSED": return .closed
        default: return .active
        }
    }
    
    public static func allValues() -> [LifecycleStateEnum] {
        return [.active, .closed]
    }
}
