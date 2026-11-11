import Foundation

// MARK: - DomainSummaryLifecycleDetailsEnum

public enum DomainSummaryLifecycleDetailsEnum: String, Codable, Sendable {
    case deactivating = "DEACTIVATING"
    case activating = "ACTIVATING"
    case updating = "UPDATING"
}

public extension DomainSummaryLifecycleDetailsEnum {
    static var allValues: [DomainSummaryLifecycleDetailsEnum] { [.deactivating, .activating, .updating] }
    static var allStringValues: [String] { ["DEACTIVATING", "ACTIVATING", "UPDATING"] }
    static func fromString(_ value: String) -> DomainSummaryLifecycleDetailsEnum? { DomainSummaryLifecycleDetailsEnum(rawValue: value) }
}