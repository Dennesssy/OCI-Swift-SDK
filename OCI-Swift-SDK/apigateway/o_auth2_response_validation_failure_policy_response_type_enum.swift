import Foundation

// MARK: - OAuth2ResponseValidationFailurePolicyResponseTypeEnum

public enum OAuth2ResponseValidationFailurePolicyResponseTypeEnum: String, Codable, Sendable {
    case code = "CODE"
}

public extension OAuth2ResponseValidationFailurePolicyResponseTypeEnum {
    static var allValues: [OAuth2ResponseValidationFailurePolicyResponseTypeEnum] { [.code] }
    static var allStringValues: [String] { ["CODE"] }
    static func fromString(_ value: String) -> OAuth2ResponseValidationFailurePolicyResponseTypeEnum? { OAuth2ResponseValidationFailurePolicyResponseTypeEnum(rawValue: value) }
}