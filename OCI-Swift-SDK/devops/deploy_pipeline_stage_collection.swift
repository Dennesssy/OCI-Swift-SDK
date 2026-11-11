import Foundation

// MARK: - DeployPipelineStageCollection

public struct DeployPipelineStageCollection: Codable, Sendable {

    public var items: [DeployPipelineStage]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployPipelineStage]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineStageCollection: CustomStringConvertible {
    public var description: String { "DeployPipelineStageCollection()" }
}