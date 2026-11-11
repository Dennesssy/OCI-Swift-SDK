import Foundation

// MARK: - SelectionSourcePolicyTypeEnum

public enum SelectionSourcePolicyTypeEnum: String, Codable, Sendable {
    case single = "SINGLE"
}

public extension SelectionSourcePolicyTypeEnum {
    static var allValues: [SelectionSourcePolicyTypeEnum] { [.single] }
    static var allStringValues: [String] { ["SINGLE"] }
    static func fromString(_ value: String) -> SelectionSourcePolicyTypeEnum? { SelectionSourcePolicyTypeEnum(rawValue: value) }
}