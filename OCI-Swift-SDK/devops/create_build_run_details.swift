import Foundation
import OCICommon

// MARK: - CreateBuildRunDetails

public struct CreateBuildRunDetails: Codable, Sendable {

    public var buildPipelineId: String?
    public var displayName: String?
    public var commitInfo: CommitInfo?
    public var buildRunArguments: BuildRunArgumentCollection?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case buildPipelineId, displayName, commitInfo, buildRunArguments, freeformTags, definedTags
    }

    public init(
                buildPipelineId: String? = nil,
                displayName: String? = nil,
                commitInfo: CommitInfo? = nil,
                buildRunArguments: BuildRunArgumentCollection? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.buildPipelineId = buildPipelineId
        self.displayName = displayName
        self.commitInfo = commitInfo
        self.buildRunArguments = buildRunArguments
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBuildRunDetails: CustomStringConvertible {
    public var description: String { "CreateBuildRunDetails()" }
}