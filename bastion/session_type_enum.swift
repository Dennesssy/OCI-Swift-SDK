// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum SessionTypeEnum: String, Codable {
    case managedSsh = "MANAGED_SSH"
    case portForwarding = "PORT_FORWARDING"
    case dynamicPortForwarding = "DYNAMIC_PORT_FORWARDING"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = SessionTypeEnum(rawValue: rawValue.uppercased()) ?? .managedSsh
    }
    
    public static func fromString(_ value: String) -> SessionTypeEnum {
        switch value.uppercased() {
        case "MANAGED_SSH": return .managedSsh
        case "PORT_FORWARDING": return .portForwarding
        case "DYNAMIC_PORT_FORWARDING": return .dynamicPortForwarding
        default: return .managedSsh
        }
    }
    
    public static func allValues() -> [SessionTypeEnum] {
        return [.managedSsh, .portForwarding, .dynamicPortForwarding]
    }
}
