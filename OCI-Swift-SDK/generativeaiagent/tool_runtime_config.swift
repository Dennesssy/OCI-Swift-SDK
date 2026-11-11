import Foundation

// MARK: - ToolRuntimeConfig

public struct ToolRuntimeConfig: Codable, Sendable {

    public var toolRuntimeConfigType: ToolRuntimeConfigToolRuntimeConfigTypeEnum
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case toolRuntimeConfigType, version
    }

    public init(
                toolRuntimeConfigType: ToolRuntimeConfigToolRuntimeConfigTypeEnum,
                version: String? = nil
    ) {
        self.toolRuntimeConfigType = toolRuntimeConfigType
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ToolRuntimeConfig: CustomStringConvertible {
    public var description: String { "ToolRuntimeConfig()" }
}