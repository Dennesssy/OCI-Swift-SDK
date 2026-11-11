import Foundation

// MARK: - DeployEnvironmentDeployEnvironmentTypeEnum

public enum DeployEnvironmentDeployEnvironmentTypeEnum: String, Codable, Sendable {
    case okeCluster = "OKE_CLUSTER"
    case computeInstanceGroup = "COMPUTE_INSTANCE_GROUP"
    case function = "FUNCTION"
}

public extension DeployEnvironmentDeployEnvironmentTypeEnum {
    static var allValues: [DeployEnvironmentDeployEnvironmentTypeEnum] { [.okeCluster, .computeInstanceGroup, .function] }
    static var allStringValues: [String] { ["OKE_CLUSTER", "COMPUTE_INSTANCE_GROUP", "FUNCTION"] }
    static func fromString(_ value: String) -> DeployEnvironmentDeployEnvironmentTypeEnum? { DeployEnvironmentDeployEnvironmentTypeEnum(rawValue: value) }
}