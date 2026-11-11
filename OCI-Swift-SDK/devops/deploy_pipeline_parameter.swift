import Foundation

// MARK: - DeployPipelineParameter

public struct DeployPipelineParameter: Codable, Sendable {

    public var name: String?
    public var defaultValue: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case name, defaultValue, description
    }

    public init(
                name: String? = nil,
                defaultValue: String? = nil,
                description: String? = nil
    ) {
        self.name = name
        self.defaultValue = defaultValue
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
