import Foundation

// MARK: - SetQueryParameterPolicyItemIfExistsEnum

public enum SetQueryParameterPolicyItemIfExistsEnum: String, Codable, Sendable {
    case overwrite = "OVERWRITE"
    case append = "APPEND"
    case skip = "SKIP"
}

public extension SetQueryParameterPolicyItemIfExistsEnum {
    static var allValues: [SetQueryParameterPolicyItemIfExistsEnum] { [.overwrite, .append, .skip] }
    static var allStringValues: [String] { ["OVERWRITE", "APPEND", "SKIP"] }
    static func fromString(_ value: String) -> SetQueryParameterPolicyItemIfExistsEnum? { SetQueryParameterPolicyItemIfExistsEnum(rawValue: value) }
}