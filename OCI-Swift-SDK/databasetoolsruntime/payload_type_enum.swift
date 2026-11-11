import Foundation

// MARK: - PayloadTypeEnum

public enum PayloadTypeEnum: String, Codable, Sendable {
    case standard = "STANDARD"
    case batch = "BATCH"
    case script = "SCRIPT"
}

public extension PayloadTypeEnum {
    static var allValues: [PayloadTypeEnum] { [.standard, .batch, .script] }
    static var allStringValues: [String] { ["STANDARD", "BATCH", "SCRIPT"] }
    static func fromString(_ value: String) -> PayloadTypeEnum? { PayloadTypeEnum(rawValue: value) }
}