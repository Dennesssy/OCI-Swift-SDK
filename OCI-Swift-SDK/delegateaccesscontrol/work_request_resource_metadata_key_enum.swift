import Foundation

// MARK: - WorkRequestResourceMetadataKeyEnum

public enum WorkRequestResourceMetadataKeyEnum: String, Codable, Sendable {
    case vmClusterId = "VM_CLUSTER_ID"
    case hostnames = "HOSTNAMES"
    case commands = "COMMANDS"
    case resultLocation = "RESULT_LOCATION"
}

public extension WorkRequestResourceMetadataKeyEnum {
    static var allValues: [WorkRequestResourceMetadataKeyEnum] { [.vmClusterId, .hostnames, .commands, .resultLocation] }
    static var allStringValues: [String] { ["VM_CLUSTER_ID", "HOSTNAMES", "COMMANDS", "RESULT_LOCATION"] }
    static func fromString(_ value: String) -> WorkRequestResourceMetadataKeyEnum? { WorkRequestResourceMetadataKeyEnum(rawValue: value) }
}