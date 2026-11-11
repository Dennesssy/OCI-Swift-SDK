import Foundation

// MARK: - ListDelegationControlsResourceTypeEnum

public enum ListDelegationControlsResourceTypeEnum: String, Codable, Sendable {
    case vmcluster = "VMCLUSTER"
    case cloudvmcluster = "CLOUDVMCLUSTER"
    case exadbvmcluster = "EXADBVMCLUSTER"
}

public extension ListDelegationControlsResourceTypeEnum {
    static var allValues: [ListDelegationControlsResourceTypeEnum] { [.vmcluster, .cloudvmcluster, .exadbvmcluster] }
    static var allStringValues: [String] { ["VMCLUSTER", "CLOUDVMCLUSTER", "EXADBVMCLUSTER"] }
    static func fromString(_ value: String) -> ListDelegationControlsResourceTypeEnum? { ListDelegationControlsResourceTypeEnum(rawValue: value) }
}