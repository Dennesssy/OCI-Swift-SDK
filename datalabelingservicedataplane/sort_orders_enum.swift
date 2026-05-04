// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum SortOrdersEnum: String, Codable {
    case asc = "ASC"
    case desc = "DESC"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = SortOrdersEnum(rawValue: rawValue.uppercased()) ?? .asc
    }
    
    public static func fromString(_ value: String) -> SortOrdersEnum {
        switch value.uppercased() {
        case "ASC": return .asc
        case "DESC": return .desc
        default: return .asc
        }
    }
    
    public static func allValues() -> [SortOrdersEnum] {
        return [.asc, .desc]
    }
}
