// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum InstanceAgentCommandExecutionDeliveryStateEnum: String, Codable {
    case visible = "VISIBLE"
    case pending = "PENDING"
    case acked = "ACKED"
    case ackedCanceled = "ACKED_CANCELED"
    case expired = "EXPIRED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = InstanceAgentCommandExecutionDeliveryStateEnum(rawValue: rawValue.uppercased()) ?? .visible
    }
    
    public static func fromString(_ value: String) -> InstanceAgentCommandExecutionDeliveryStateEnum {
        switch value.uppercased() {
        case "VISIBLE": return .visible
        case "PENDING": return .pending
        case "ACKED": return .acked
        case "ACKED_CANCELED": return .ackedCanceled
        case "EXPIRED": return .expired
        default: return .visible
        }
    }
    
    public static func allValues() -> [InstanceAgentCommandExecutionDeliveryStateEnum] {
        return [.visible, .pending, .acked, .ackedCanceled, .expired]
    }
}
