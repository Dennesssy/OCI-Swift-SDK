import Foundation

// MARK: - PatchReadinessStatusEnum

public enum PatchReadinessStatusEnum: String, Codable, Sendable {
    case ok = "OK"
    case warning = "WARNING"
    case error = "ERROR"
    case unknown = "UNKNOWN"
}

public extension PatchReadinessStatusEnum {
    static var allValues: [PatchReadinessStatusEnum] { [.ok, .warning, .error, .unknown] }
    static var allStringValues: [String] { ["OK", "WARNING", "ERROR", "UNKNOWN"] }
    static func fromString(_ value: String) -> PatchReadinessStatusEnum? { PatchReadinessStatusEnum(rawValue: value) }
}