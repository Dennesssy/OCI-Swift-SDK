// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum BastionDnsProxyStatusEnum: String, Codable {
    case disabled = "DISABLED"
    case enabled = "ENABLED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BastionDnsProxyStatusEnum(rawValue: rawValue.uppercased()) ?? .disabled
    }
    
    public static func fromString(_ value: String) -> BastionDnsProxyStatusEnum {
        switch value.uppercased() {
        case "DISABLED": return .disabled
        case "ENABLED": return .enabled
        default: return .disabled
        }
    }
    
    public static func allValues() -> [BastionDnsProxyStatusEnum] {
        return [.disabled, .enabled]
    }
}
