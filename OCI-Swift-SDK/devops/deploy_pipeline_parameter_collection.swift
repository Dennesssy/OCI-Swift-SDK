import Foundation

// MARK: - DeployPipelineParameterCollection

public struct DeployPipelineParameterCollection: Codable, Sendable {

    public var items: [DeployPipelineParameter]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployPipelineParameter]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineParameterCollection: CustomStringConvertible {
    public var description: String { "DeployPipelineParameterCollection()" }
}