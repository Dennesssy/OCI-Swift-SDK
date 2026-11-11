import Foundation
import OCICommon

// MARK: - ContainerImage

public struct ContainerImage: Codable, Sendable {

    public var compartmentId: String?
    public var createdBy: String?
    public var digest: String?
    public var displayName: String?
    public var id: String?
    public var layers: [ContainerImageLayer]
    public var layersSizeInBytes: Int64?
    public var lifecycleState: ContainerImageLifecycleStateEnum
    public var manifestSizeInBytes: Int?
    public var pullCount: Int64?
    public var repositoryId: String?
    public var repositoryName: String?
    public var timeCreated: Date?
    public var versions: [ContainerVersion]
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var timeLastPulled: Date?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, createdBy, digest, displayName, id, layers, layersSizeInBytes, lifecycleState, manifestSizeInBytes, pullCount, repositoryId, repositoryName, timeCreated, versions, freeformTags, definedTags, systemTags, timeLastPulled, version
    }

    public init(
                compartmentId: String? = nil,
                createdBy: String? = nil,
                digest: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                layers: [ContainerImageLayer],
                layersSizeInBytes: Int64? = nil,
                lifecycleState: ContainerImageLifecycleStateEnum,
                manifestSizeInBytes: Int? = nil,
                pullCount: Int64? = nil,
                repositoryId: String? = nil,
                repositoryName: String? = nil,
                timeCreated: Date? = nil,
                versions: [ContainerVersion],
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                timeLastPulled: Date? = nil,
                version: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.createdBy = createdBy
        self.digest = digest
        self.displayName = displayName
        self.id = id
        self.layers = layers
        self.layersSizeInBytes = layersSizeInBytes
        self.lifecycleState = lifecycleState
        self.manifestSizeInBytes = manifestSizeInBytes
        self.pullCount = pullCount
        self.repositoryId = repositoryId
        self.repositoryName = repositoryName
        self.timeCreated = timeCreated
        self.versions = versions
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeLastPulled = timeLastPulled
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImage: CustomStringConvertible {
    public var description: String { "ContainerImage()" }
}