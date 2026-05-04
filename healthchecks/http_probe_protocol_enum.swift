// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum HttpProbeProtocolEnum: String, Codable {
    case http = "HTTP"
    case https = "HTTPS"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = HttpProbeProtocolEnum(rawValue: rawValue.uppercased()) ?? .http
    }
    
    public static func fromString(_ value: String) -> HttpProbeProtocolEnum {
        switch value.uppercased() {
        case "HTTP": return .http
        case "HTTPS": return .https
        default: return .http
        }
    }
    
    public static func allValues() -> [HttpProbeProtocolEnum] {
        return [.http, .https]
    }
}
