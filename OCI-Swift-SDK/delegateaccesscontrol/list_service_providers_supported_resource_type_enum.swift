import Foundation

// MARK: - ListServiceProvidersSupportedResourceTypeEnum

public enum ListServiceProvidersSupportedResourceTypeEnum: String, Codable, Sendable {
    case vmcluster = "VMCLUSTER"
    case cloudvmcluster = "CLOUDVMCLUSTER"
    case exadbvmcluster = "EXADBVMCLUSTER"
}

public extension ListServiceProvidersSupportedResourceTypeEnum {
    static var allValues: [ListServiceProvidersSupportedResourceTypeEnum] { [.vmcluster, .cloudvmcluster, .exadbvmcluster] }
    static var allStringValues: [String] { ["VMCLUSTER", "CLOUDVMCLUSTER", "EXADBVMCLUSTER"] }
    static func fromString(_ value: String) -> ListServiceProvidersSupportedResourceTypeEnum? { ListServiceProvidersSupportedResourceTypeEnum(rawValue: value) }
}