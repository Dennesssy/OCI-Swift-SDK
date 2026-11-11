import Foundation

// MARK: - BatchTaskEnvironmentVolumeTypeEnum

public enum BatchTaskEnvironmentVolumeTypeEnum: String, Codable, Sendable {
    case nfs = "NFS"
}

public extension BatchTaskEnvironmentVolumeTypeEnum {
    static var allValues: [BatchTaskEnvironmentVolumeTypeEnum] { [.nfs] }
    static var allStringValues: [String] { ["NFS"] }
    static func fromString(_ value: String) -> BatchTaskEnvironmentVolumeTypeEnum? { BatchTaskEnvironmentVolumeTypeEnum(rawValue: value) }
}