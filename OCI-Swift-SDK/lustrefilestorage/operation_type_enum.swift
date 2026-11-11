import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createLustreFileSystem = "CREATE_LUSTRE_FILE_SYSTEM"
    case updateLustreFileSystem = "UPDATE_LUSTRE_FILE_SYSTEM"
    case deleteLustreFileSystem = "DELETE_LUSTRE_FILE_SYSTEM"
    case moveLustreFileSystem = "MOVE_LUSTRE_FILE_SYSTEM"
    case deleteObjectStorageLink = "DELETE_OBJECT_STORAGE_LINK"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createLustreFileSystem, .updateLustreFileSystem, .deleteLustreFileSystem, .moveLustreFileSystem, .deleteObjectStorageLink] }
    static var allStringValues: [String] { ["CREATE_LUSTRE_FILE_SYSTEM", "UPDATE_LUSTRE_FILE_SYSTEM", "DELETE_LUSTRE_FILE_SYSTEM", "MOVE_LUSTRE_FILE_SYSTEM", "DELETE_OBJECT_STORAGE_LINK"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}