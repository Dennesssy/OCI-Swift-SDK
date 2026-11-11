import Foundation

// MARK: - DiagnosisSummaryTestTypeEnum

public enum DiagnosisSummaryTestTypeEnum: String, Codable, Sendable {
    case passive = "PASSIVE"
    case active = "ACTIVE"
}

public extension DiagnosisSummaryTestTypeEnum {
    static var allValues: [DiagnosisSummaryTestTypeEnum] { [.passive, .active] }
    static var allStringValues: [String] { ["PASSIVE", "ACTIVE"] }
    static func fromString(_ value: String) -> DiagnosisSummaryTestTypeEnum? { DiagnosisSummaryTestTypeEnum(rawValue: value) }
}