import Foundation

// MARK: - MessageRoleEnum

public enum MessageRoleEnum: String, Codable, Sendable {
    case user = "USER"
    case agent = "AGENT"
}

public extension MessageRoleEnum {
    static var allValues: [MessageRoleEnum] { [.user, .agent] }
    static var allStringValues: [String] { ["USER", "AGENT"] }
    static func fromString(_ value: String) -> MessageRoleEnum? { MessageRoleEnum(rawValue: value) }
}