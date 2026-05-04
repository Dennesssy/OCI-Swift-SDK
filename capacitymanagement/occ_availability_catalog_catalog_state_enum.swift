// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum OccAvailabilityCatalogCatalogStateEnum: String, Codable {
    case notUploaded = "NOT_UPLOADED"
    case uploadFailed = "UPLOAD_FAILED"
    case staged = "STAGED"
    case published = "PUBLISHED"
    case outdated = "OUTDATED"
    case deleted = "DELETED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = OccAvailabilityCatalogCatalogStateEnum(rawValue: rawValue.uppercased()) ?? .notUploaded
    }
    
    public static func fromString(_ value: String) -> OccAvailabilityCatalogCatalogStateEnum {
        switch value.uppercased() {
        case "NOT_UPLOADED": return .notUploaded
        case "UPLOAD_FAILED": return .uploadFailed
        case "STAGED": return .staged
        case "PUBLISHED": return .published
        case "OUTDATED": return .outdated
        case "DELETED": return .deleted
        default: return .notUploaded
        }
    }
    
    public static func allValues() -> [OccAvailabilityCatalogCatalogStateEnum] {
        return [.notUploaded, .uploadFailed, .staged, .published, .outdated, .deleted]
    }
}
