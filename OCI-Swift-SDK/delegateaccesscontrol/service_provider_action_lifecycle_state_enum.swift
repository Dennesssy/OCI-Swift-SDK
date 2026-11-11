import Foundation

// MARK: - ServiceProviderActionLifecycleStateEnum

public enum ServiceProviderActionLifecycleStateEnum: String, Codable, Sendable {
    case active = "ACTIVE"
    case inactive = "INACTIVE"
}

public extension ServiceProviderActionLifecycleStateEnum {
    static var allValues: [ServiceProviderActionLifecycleStateEnum] { [.active, .inactive] }
    static var allStringValues: [String] { ["ACTIVE", "INACTIVE"] }
    static func fromString(_ value: String) -> ServiceProviderActionLifecycleStateEnum? { ServiceProviderActionLifecycleStateEnum(rawValue: value) }
}