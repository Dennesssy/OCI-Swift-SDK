import Foundation

// MARK: - ListWlsDomainsPatchReadinessStatusEnum

public enum ListWlsDomainsPatchReadinessStatusEnum: String, Codable, Sendable {
    case ok = "OK"
    case warning = "WARNING"
    case error = "ERROR"
    case unknown = "UNKNOWN"
}

public extension ListWlsDomainsPatchReadinessStatusEnum {
    static var allValues: [ListWlsDomainsPatchReadinessStatusEnum] { [.ok, .warning, .error, .unknown] }
    static var allStringValues: [String] { ["OK", "WARNING", "ERROR", "UNKNOWN"] }
    static func fromString(_ value: String) -> ListWlsDomainsPatchReadinessStatusEnum? { ListWlsDomainsPatchReadinessStatusEnum(rawValue: value) }
}