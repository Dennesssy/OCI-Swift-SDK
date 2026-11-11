import Foundation

// MARK: - BulkUnpinMetadataOperationTypeEnum

public enum BulkUnpinMetadataOperationTypeEnum: String, Codable, Sendable {
    case unpin = "UNPIN"
}

public extension BulkUnpinMetadataOperationTypeEnum {
    static var allValues: [BulkUnpinMetadataOperationTypeEnum] { [.unpin] }
    static var allStringValues: [String] { ["UNPIN"] }
    static func fromString(_ value: String) -> BulkUnpinMetadataOperationTypeEnum? { BulkUnpinMetadataOperationTypeEnum(rawValue: value) }
}