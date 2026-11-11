import Foundation

// MARK: - ScanResultSummaryServerCheckStatusEnum

public enum ScanResultSummaryServerCheckStatusEnum: String, Codable, Sendable {
    case ok = "OK"
    case warning = "WARNING"
    case failure = "FAILURE"
}

public extension ScanResultSummaryServerCheckStatusEnum {
    static var allValues: [ScanResultSummaryServerCheckStatusEnum] { [.ok, .warning, .failure] }
    static var allStringValues: [String] { ["OK", "WARNING", "FAILURE"] }
    static func fromString(_ value: String) -> ScanResultSummaryServerCheckStatusEnum? { ScanResultSummaryServerCheckStatusEnum(rawValue: value) }
}