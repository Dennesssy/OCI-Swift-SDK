import Foundation

// MARK: - DataSourceConfigDataSourceConfigTypeEnum

public enum DataSourceConfigDataSourceConfigTypeEnum: String, Codable, Sendable {
    case ociObjectStorage = "OCI_OBJECT_STORAGE"
}

public extension DataSourceConfigDataSourceConfigTypeEnum {
    static var allValues: [DataSourceConfigDataSourceConfigTypeEnum] { [.ociObjectStorage] }
    static var allStringValues: [String] { ["OCI_OBJECT_STORAGE"] }
    static func fromString(_ value: String) -> DataSourceConfigDataSourceConfigTypeEnum? { DataSourceConfigDataSourceConfigTypeEnum(rawValue: value) }
}