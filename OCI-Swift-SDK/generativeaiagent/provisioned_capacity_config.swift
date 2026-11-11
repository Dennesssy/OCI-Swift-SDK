import Foundation

// MARK: - ProvisionedCapacityConfig

public struct ProvisionedCapacityConfig: Codable, Sendable {

    public var provisionedCapacityId: String?
    public var platformRuntimeConfig: PlatformRuntimeConfig?
    public var toolRuntimeConfigs: [ToolRuntimeConfig]?

    private enum CodingKeys: String, CodingKey {
        case provisionedCapacityId, platformRuntimeConfig, toolRuntimeConfigs
    }

    public init(
                provisionedCapacityId: String? = nil,
                platformRuntimeConfig: PlatformRuntimeConfig? = nil,
                toolRuntimeConfigs: [ToolRuntimeConfig]? = nil
    ) {
        self.provisionedCapacityId = provisionedCapacityId
        self.platformRuntimeConfig = platformRuntimeConfig
        self.toolRuntimeConfigs = toolRuntimeConfigs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ProvisionedCapacityConfig: CustomStringConvertible {
    public var description: String { "ProvisionedCapacityConfig()" }
}