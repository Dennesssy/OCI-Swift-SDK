// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum IntegrationInstanceConsumptionModelEnum: String, Codable {
    case ucm = "UCM"
    case gov = "GOV"
    case oic4saas = "OIC4SAAS"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = IntegrationInstanceConsumptionModelEnum(rawValue: rawValue.uppercased()) ?? .ucm
    }
    
    public static func fromString(_ value: String) -> IntegrationInstanceConsumptionModelEnum {
        switch value.uppercased() {
        case "UCM": return .ucm
        case "GOV": return .gov
        case "OIC4SAAS": return .oic4saas
        default: return .ucm
        }
    }
    
    public static func allValues() -> [IntegrationInstanceConsumptionModelEnum] {
        return [.ucm, .gov, .oic4saas]
    }
}
