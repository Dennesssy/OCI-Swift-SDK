import Foundation

// MARK: - DatabaseToolsIdentityStatusEnum

public enum DatabaseToolsIdentityStatusEnum: String, Codable, Sendable {
    case available = "AVAILABLE"
    case unavailable = "UNAVAILABLE"
}

public extension DatabaseToolsIdentityStatusEnum {
    static var allValues: [DatabaseToolsIdentityStatusEnum] { [.available, .unavailable] }
    static var allStringValues: [String] { ["AVAILABLE", "UNAVAILABLE"] }
    static func fromString(_ value: String) -> DatabaseToolsIdentityStatusEnum? { DatabaseToolsIdentityStatusEnum(rawValue: value) }
}