import Foundation

// MARK: - ContainerConfigContainerConfigTypeEnum

public enum ContainerConfigContainerConfigTypeEnum: String, Codable, Sendable {
    case containerInstanceConfig = "CONTAINER_INSTANCE_CONFIG"
}

public extension ContainerConfigContainerConfigTypeEnum {
    static var allValues: [ContainerConfigContainerConfigTypeEnum] { [.containerInstanceConfig] }
    static var allStringValues: [String] { ["CONTAINER_INSTANCE_CONFIG"] }
    static func fromString(_ value: String) -> ContainerConfigContainerConfigTypeEnum? { ContainerConfigContainerConfigTypeEnum(rawValue: value) }
}