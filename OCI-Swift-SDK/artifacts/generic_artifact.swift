import Foundation
import OCICommon

// MARK: - GenericArtifact

public struct GenericArtifact: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var repositoryId: String?
    public var artifactPath: String?
    public var version: String?
    public var sha256: String?
    public var sizeInBytes: Int64?
    public var lifecycleState: GenericArtifactLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, repositoryId, artifactPath, version, sha256, sizeInBytes, lifecycleState, freeformTags, definedTags, timeCreated
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                repositoryId: String? = nil,
                artifactPath: String? = nil,
                version: String? = nil,
                sha256: String? = nil,
                sizeInBytes: Int64? = nil,
                lifecycleState: GenericArtifactLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeCreated: Date? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.repositoryId = repositoryId
        self.artifactPath = artifactPath
        self.version = version
        self.sha256 = sha256
        self.sizeInBytes = sizeInBytes
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenericArtifact: CustomStringConvertible {
    public var description: String { "GenericArtifact()" }
}