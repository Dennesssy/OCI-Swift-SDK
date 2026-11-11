import Foundation

// MARK: - SetHeaderPolicyItemIfExistsEnum

public enum SetHeaderPolicyItemIfExistsEnum: String, Codable, Sendable {
    case overwrite = "OVERWRITE"
    case append = "APPEND"
    case skip = "SKIP"
}

public extension SetHeaderPolicyItemIfExistsEnum {
    static var allValues: [SetHeaderPolicyItemIfExistsEnum] { [.overwrite, .append, .skip] }
    static var allStringValues: [String] { ["OVERWRITE", "APPEND", "SKIP"] }
    static func fromString(_ value: String) -> SetHeaderPolicyItemIfExistsEnum? { SetHeaderPolicyItemIfExistsEnum(rawValue: value) }
}