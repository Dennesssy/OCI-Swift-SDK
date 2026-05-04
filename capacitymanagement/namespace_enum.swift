// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum NamespaceEnum: String, Codable {
    case compute = "COMPUTE"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = NamespaceEnum(rawValue: rawValue.uppercased()) ?? .compute
    }
    
    public static func fromString(_ value: String) -> NamespaceEnum {
        switch value.uppercased() {
        case "COMPUTE": return .compute
        default: return .compute
        }
    }
    
    public static func allValues() -> [NamespaceEnum] {
        return [.compute]
    }
}
