import Foundation

// MARK: - RootSquashConfigurationIdentitySquashEnum

public enum RootSquashConfigurationIdentitySquashEnum: String, Codable, Sendable {
    case none = "NONE"
    case root = "ROOT"
}

public extension RootSquashConfigurationIdentitySquashEnum {
    static var allValues: [RootSquashConfigurationIdentitySquashEnum] { [.none, .root] }
    static var allStringValues: [String] { ["NONE", "ROOT"] }
    static func fromString(_ value: String) -> RootSquashConfigurationIdentitySquashEnum? { RootSquashConfigurationIdentitySquashEnum(rawValue: value) }
}