import Foundation
import OCICommon

// MARK: - ContainerImageSummary

public struct ContainerImageSummary: Codable, Sendable {

    public var compartmentId: String?
    public var digest: String?
    public var displayName: String?
    public var id: String?
    public var lifecycleState: ContainerImageLifecycleStateEnum
    public var repositoryId: String?
    public var repositoryName: String?
    public var timeCreated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, digest, displayName, id, lifecycleState, repositoryId, repositoryName, timeCreated, freeformTags, definedTags, systemTags, version
    }

    public init(
                compartmentId: String? = nil,
                digest: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                lifecycleState: ContainerImageLifecycleStateEnum,
                repositoryId: String? = nil,
                repositoryName: String? = nil,
                timeCreated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                version: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.digest = digest
        self.displayName = displayName
        self.id = id
        self.lifecycleState = lifecycleState
        self.repositoryId = repositoryId
        self.repositoryName = repositoryName
        self.timeCreated = timeCreated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImageSummary: CustomStringConvertible {
    public var description: String { "ContainerImageSummary()" }
}