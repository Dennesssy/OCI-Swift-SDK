// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum BaseAnnouncementPlatformTypeEnum: String, Codable {
    case iaas = "IAAS"
    case saas = "SAAS"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BaseAnnouncementPlatformTypeEnum(rawValue: rawValue.uppercased()) ?? .iaas
    }
    
    public static func fromString(_ value: String) -> BaseAnnouncementPlatformTypeEnum {
        switch value.uppercased() {
        case "IAAS": return .iaas
        case "SAAS": return .saas
        default: return .iaas
        }
    }
    
    public static func allValues() -> [BaseAnnouncementPlatformTypeEnum] {
        return [.iaas, .saas]
    }
}
