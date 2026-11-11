import Foundation

// MARK: - CredentialTypeEnum

public enum CredentialTypeEnum: String, Codable, Sendable {
    case basic = "BASIC"
}

public extension CredentialTypeEnum {
    static var allValues: [CredentialTypeEnum] { [.basic] }
    static var allStringValues: [String] { ["BASIC"] }
    static func fromString(_ value: String) -> CredentialTypeEnum? { CredentialTypeEnum(rawValue: value) }
}