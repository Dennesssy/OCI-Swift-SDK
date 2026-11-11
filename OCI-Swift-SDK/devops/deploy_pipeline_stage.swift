import Foundation

// MARK: - DeployPipelineStage

public struct DeployPipelineStage: Codable, Sendable {

    public var deployStageId: String?
    public var displayName: String?

    private enum CodingKeys: String, CodingKey {
        case deployStageId, displayName
    }

    public init(
                deployStageId: String? = nil,
                displayName: String? = nil
    ) {
        self.deployStageId = deployStageId
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployPipelineStage: CustomStringConvertible {
    public var description: String { "DeployPipelineStage()" }
}