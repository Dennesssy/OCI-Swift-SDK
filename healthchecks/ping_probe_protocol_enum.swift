// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum PingProbeProtocolEnum: String, Codable {
    case icmp = "ICMP"
    case tcp = "TCP"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = PingProbeProtocolEnum(rawValue: rawValue.uppercased()) ?? .icmp
    }
    
    public static func fromString(_ value: String) -> PingProbeProtocolEnum {
        switch value.uppercased() {
        case "ICMP": return .icmp
        case "TCP": return .tcp
        default: return .icmp
        }
    }
    
    public static func allValues() -> [PingProbeProtocolEnum] {
        return [.icmp, .tcp]
    }
}
