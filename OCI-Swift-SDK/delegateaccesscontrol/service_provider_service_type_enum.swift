import Foundation

// MARK: - ServiceProviderServiceTypeEnum

public enum ServiceProviderServiceTypeEnum: String, Codable, Sendable {
    case troubleshooting = "TROUBLESHOOTING"
    case assistedPatching = "ASSISTED_PATCHING"
    case managedSoftwareUpdates = "MANAGED_SOFTWARE_UPDATES"
}

public extension ServiceProviderServiceTypeEnum {
    static var allValues: [ServiceProviderServiceTypeEnum] { [.troubleshooting, .assistedPatching, .managedSoftwareUpdates] }
    static var allStringValues: [String] { ["TROUBLESHOOTING", "ASSISTED_PATCHING", "MANAGED_SOFTWARE_UPDATES"] }
    static func fromString(_ value: String) -> ServiceProviderServiceTypeEnum? { ServiceProviderServiceTypeEnum(rawValue: value) }
}