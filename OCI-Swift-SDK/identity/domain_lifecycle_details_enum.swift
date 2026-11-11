import Foundation

// MARK: - DomainLifecycleDetailsEnum

public enum DomainLifecycleDetailsEnum: String, Codable, Sendable {
    case deactivating = "DEACTIVATING"
    case activating = "ACTIVATING"
    case updating = "UPDATING"
}

public extension DomainLifecycleDetailsEnum {
    static var allValues: [DomainLifecycleDetailsEnum] { [.deactivating, .activating, .updating] }
    static var allStringValues: [String] { ["DEACTIVATING", "ACTIVATING", "UPDATING"] }
    static func fromString(_ value: String) -> DomainLifecycleDetailsEnum? { DomainLifecycleDetailsEnum(rawValue: value) }
}