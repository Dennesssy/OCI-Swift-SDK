import Foundation

// MARK: - ValidationFailurePolicyTypeEnum

public enum ValidationFailurePolicyTypeEnum: String, Codable, Sendable {
    case modifyResponse = "MODIFY_RESPONSE"
    case oauth2 = "OAUTH2"
}

public extension ValidationFailurePolicyTypeEnum {
    static var allValues: [ValidationFailurePolicyTypeEnum] { [.modifyResponse, .oauth2] }
    static var allStringValues: [String] { ["MODIFY_RESPONSE", "OAUTH2"] }
    static func fromString(_ value: String) -> ValidationFailurePolicyTypeEnum? { ValidationFailurePolicyTypeEnum(rawValue: value) }
}