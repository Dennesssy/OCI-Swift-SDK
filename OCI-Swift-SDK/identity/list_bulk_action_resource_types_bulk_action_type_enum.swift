import Foundation

// MARK: - ListBulkActionResourceTypesBulkActionTypeEnum

public enum ListBulkActionResourceTypesBulkActionTypeEnum: String, Codable, Sendable {
    case moveResources = "BULK_MOVE_RESOURCES"
    case deleteResources = "BULK_DELETE_RESOURCES"
}

public extension ListBulkActionResourceTypesBulkActionTypeEnum {
    static var allValues: [ListBulkActionResourceTypesBulkActionTypeEnum] { [.moveResources, .deleteResources] }
    static var allStringValues: [String] { ["BULK_MOVE_RESOURCES", "BULK_DELETE_RESOURCES"] }
    static func fromString(_ value: String) -> ListBulkActionResourceTypesBulkActionTypeEnum? { ListBulkActionResourceTypesBulkActionTypeEnum(rawValue: value) }
}