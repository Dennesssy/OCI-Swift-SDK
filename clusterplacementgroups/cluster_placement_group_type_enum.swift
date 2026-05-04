// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum ClusterPlacementGroupTypeEnum: String, Codable {
    case standard = "STANDARD"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = ClusterPlacementGroupTypeEnum(rawValue: rawValue.uppercased()) ?? .standard
    }
    
    public static func fromString(_ value: String) -> ClusterPlacementGroupTypeEnum {
        switch value.uppercased() {
        case "STANDARD": return .standard
        default: return .standard
        }
    }
    
    public static func allValues() -> [ClusterPlacementGroupTypeEnum] {
        return [.standard]
    }
}
