// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum IntegrationInstanceTypeEnum: String, Codable {
    case standard = "STANDARD"
    case enterprise = "ENTERPRISE"
    case standardx = "STANDARDX"
    case enterprisex = "ENTERPRISEX"
    case healthcare = "HEALTHCARE"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = IntegrationInstanceTypeEnum(rawValue: rawValue.uppercased()) ?? .standard
    }
    
    public static func fromString(_ value: String) -> IntegrationInstanceTypeEnum {
        switch value.uppercased() {
        case "STANDARD": return .standard
        case "ENTERPRISE": return .enterprise
        case "STANDARDX": return .standardx
        case "ENTERPRISEX": return .enterprisex
        case "HEALTHCARE": return .healthcare
        default: return .standard
        }
    }
    
    public static func allValues() -> [IntegrationInstanceTypeEnum] {
        return [.standard, .enterprise, .standardx, .enterprisex, .healthcare]
    }
}
