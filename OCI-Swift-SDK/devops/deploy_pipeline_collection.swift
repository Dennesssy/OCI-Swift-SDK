import Foundation

// MARK: - DeployPipelineCollection

public struct DeployPipelineCollection: Codable, Sendable {

    public var items: [DeployPipelineSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployPipelineSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineCollection: CustomStringConvertible {
    public var description: String { "DeployPipelineCollection()" }
}