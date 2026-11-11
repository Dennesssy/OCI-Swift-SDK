import Foundation
import OCICommon

// MARK: - TriggerBuildPipelineAction

public struct TriggerBuildPipelineAction: Codable, Sendable {

    public var buildPipelineId: String?
    public var filter: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, filter
    }

    public init(
                buildPipelineId: String? = nil,
                filter: JSONValue? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.filter = filter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TriggerBuildPipelineAction: CustomStringConvertible {
    public var description: String { "TriggerBuildPipelineAction()" }
}