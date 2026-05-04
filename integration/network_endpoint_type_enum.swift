// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum NetworkEndpointTypeEnum: String, Codable {
    case publicEndpoint = "PUBLIC"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = NetworkEndpointTypeEnum(rawValue: rawValue.uppercased()) ?? .publicEndpoint
    }
    
    public static func fromString(_ value: String) -> NetworkEndpointTypeEnum {
        switch value.uppercased() {
        case "PUBLIC": return .publicEndpoint
        default: return .publicEndpoint
        }
    }
    
    public static func allValues() -> [NetworkEndpointTypeEnum] {
        return [.publicEndpoint]
    }
}
