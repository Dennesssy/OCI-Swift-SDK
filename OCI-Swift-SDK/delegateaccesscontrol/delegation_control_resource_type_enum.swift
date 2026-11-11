import Foundation

// MARK: - DelegationControlResourceTypeEnum

public enum DelegationControlResourceTypeEnum: String, Codable, Sendable {
    case vmcluster = "VMCLUSTER"
    case cloudvmcluster = "CLOUDVMCLUSTER"
    case exadbvmcluster = "EXADBVMCLUSTER"
}

public extension DelegationControlResourceTypeEnum {
    static var allValues: [DelegationControlResourceTypeEnum] { [.vmcluster, .cloudvmcluster, .exadbvmcluster] }
    static var allStringValues: [String] { ["VMCLUSTER", "CLOUDVMCLUSTER", "EXADBVMCLUSTER"] }
    static func fromString(_ value: String) -> DelegationControlResourceTypeEnum? { DelegationControlResourceTypeEnum(rawValue: value) }
}