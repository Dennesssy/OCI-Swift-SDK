import Foundation

// MARK: - PlatformRuntimeConfig

public struct PlatformRuntimeConfig: Codable, Sendable {

    public var platformRuntimeConfigType: PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case platformRuntimeConfigType, version
    }

    public init(
                platformRuntimeConfigType: PlatformRuntimeConfigPlatformRuntimeConfigTypeEnum? = nil,
                version: String? = nil
    ) {
        self.platformRuntimeConfigType = platformRuntimeConfigType
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PlatformRuntimeConfig: CustomStringConvertible {
    public var description: String { "PlatformRuntimeConfig()" }
}