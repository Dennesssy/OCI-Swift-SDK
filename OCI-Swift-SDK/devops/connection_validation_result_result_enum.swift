import Foundation

// MARK: - ConnectionValidationResultResultEnum

public enum ConnectionValidationResultResultEnum: String, Codable, Sendable {
    case pass = "PASS"
    case fail = "FAIL"
}

public extension ConnectionValidationResultResultEnum {
    static var allValues: [ConnectionValidationResultResultEnum] { [.pass, .fail] }
    static var allStringValues: [String] { ["PASS", "FAIL"] }
    static func fromString(_ value: String) -> ConnectionValidationResultResultEnum? { ConnectionValidationResultResultEnum(rawValue: value) }
}