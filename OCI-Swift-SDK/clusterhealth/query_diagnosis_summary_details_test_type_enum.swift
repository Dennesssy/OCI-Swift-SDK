import Foundation

// MARK: - QueryDiagnosisSummaryDetailsTestTypeEnum

public enum QueryDiagnosisSummaryDetailsTestTypeEnum: String, Codable, Sendable {
    case passive = "PASSIVE"
    case active = "ACTIVE"
}

public extension QueryDiagnosisSummaryDetailsTestTypeEnum {
    static var allValues: [QueryDiagnosisSummaryDetailsTestTypeEnum] { [.passive, .active] }
    static var allStringValues: [String] { ["PASSIVE", "ACTIVE"] }
    static func fromString(_ value: String) -> QueryDiagnosisSummaryDetailsTestTypeEnum? { QueryDiagnosisSummaryDetailsTestTypeEnum(rawValue: value) }
}