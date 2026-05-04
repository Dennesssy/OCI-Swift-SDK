// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum HttpProbeMethodEnum: String, Codable {
    case get = "GET"
    case head = "HEAD"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = HttpProbeMethodEnum(rawValue: rawValue.uppercased()) ?? .get
    }
    
    public static func fromString(_ value: String) -> HttpProbeMethodEnum {
        switch value.uppercased() {
        case "GET": return .get
        case "HEAD": return .head
        default: return .get
        }
    }
    
    public static func allValues() -> [HttpProbeMethodEnum] {
        return [.get, .head]
    }
}
