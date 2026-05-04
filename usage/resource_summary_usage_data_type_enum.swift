// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ResourceSummaryUsageDataTypeEnum: String, Codable {
    case interval = "INTERVAL"
    case pointData = "POINT_DATA"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ResourceSummaryUsageDataTypeEnum(rawValue: rawValue.uppercased()) ?? .interval
    }
    
    public static func fromString(_ value: String) -> ResourceSummaryUsageDataTypeEnum {
        switch value.uppercased() {
        case "INTERVAL": return .interval
        case "POINT_DATA": return .pointData
        default: return .interval
        }
    }
    
    public static func allValues() -> [ResourceSummaryUsageDataTypeEnum] {
        return [.interval, .pointData]
    }
}
