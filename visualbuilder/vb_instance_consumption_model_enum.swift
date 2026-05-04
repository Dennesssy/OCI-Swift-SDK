// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum VbInstanceConsumptionModelEnum: String, Codable {
    case ucm = "UCM"
    case gov = "GOV"
    case vb4saas = "VB4SAAS"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = VbInstanceConsumptionModelEnum(rawValue: rawValue.uppercased()) ?? .ucm
    }
    
    public static func fromString(_ value: String) -> VbInstanceConsumptionModelEnum {
        switch value.uppercased() {
        case "UCM": return .ucm
        case "GOV": return .gov
        case "VB4SAAS": return .vb4saas
        default: return .ucm
        }
    }
    
    public static func allValues() -> [VbInstanceConsumptionModelEnum] {
        return [.ucm, .gov, .vb4saas]
    }
}
