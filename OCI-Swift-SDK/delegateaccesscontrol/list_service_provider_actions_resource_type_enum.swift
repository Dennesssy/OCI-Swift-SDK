import Foundation

// MARK: - ListServiceProviderActionsResourceTypeEnum

public enum ListServiceProviderActionsResourceTypeEnum: String, Codable, Sendable {
    case vmcluster = "VMCLUSTER"
    case cloudvmcluster = "CLOUDVMCLUSTER"
    case exadbvmcluster = "EXADBVMCLUSTER"
}

public extension ListServiceProviderActionsResourceTypeEnum {
    static var allValues: [ListServiceProviderActionsResourceTypeEnum] { [.vmcluster, .cloudvmcluster, .exadbvmcluster] }
    static var allStringValues: [String] { ["VMCLUSTER", "CLOUDVMCLUSTER", "EXADBVMCLUSTER"] }
    static func fromString(_ value: String) -> ListServiceProviderActionsResourceTypeEnum? { ListServiceProviderActionsResourceTypeEnum(rawValue: value) }
}