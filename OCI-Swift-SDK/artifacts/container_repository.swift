import Foundation
import OCICommon

// MARK: - ContainerRepository

public struct ContainerRepository: Codable, Sendable {

    public var compartmentId: String?
    public var createdBy: String?
    public var displayName: String?
    public var id: String?
    public var imageCount: Int?
    public var isImmutable: Bool?
    public var isPublic: Bool?
    public var layerCount: Int?
    public var layersSizeInBytes: Int64?
    public var lifecycleState: ContainerRepositoryLifecycleStateEnum
    public var timeCreated: Date?
    public var billableSizeInGBs: Int64?
    public var namespace: String?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var readme: ContainerRepositoryReadme?
    public var timeLastPushed: Date?
    public var repositoryType: ContainerRepositoryRepositoryTypeEnum?
    public var isTopLevel: Bool?
    public var upstreamUrl: String?
    public var upstreamUsername: String?
    public var upstreamSecretId: String?
    public var multiRegionPeers: [String]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, createdBy, displayName, id, imageCount, isImmutable, isPublic, layerCount, layersSizeInBytes, lifecycleState, timeCreated, billableSizeInGBs, namespace, freeformTags, definedTags, systemTags, readme, timeLastPushed, repositoryType, isTopLevel, upstreamUrl, upstreamUsername, upstreamSecretId, multiRegionPeers
    }

    public init(
                compartmentId: String? = nil,
                createdBy: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                imageCount: Int? = nil,
                isImmutable: Bool? = nil,
                isPublic: Bool? = nil,
                layerCount: Int? = nil,
                layersSizeInBytes: Int64? = nil,
                lifecycleState: ContainerRepositoryLifecycleStateEnum,
                timeCreated: Date? = nil,
                billableSizeInGBs: Int64? = nil,
                namespace: String? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                readme: ContainerRepositoryReadme? = nil,
                timeLastPushed: Date? = nil,
                repositoryType: ContainerRepositoryRepositoryTypeEnum? = nil,
                isTopLevel: Bool? = nil,
                upstreamUrl: String? = nil,
                upstreamUsername: String? = nil,
                upstreamSecretId: String? = nil,
                multiRegionPeers: [String]? = nil
    ) {
        self.compartmentId = compartmentId
        self.createdBy = createdBy
        self.displayName = displayName
        self.id = id
        self.imageCount = imageCount
        self.isImmutable = isImmutable
        self.isPublic = isPublic
        self.layerCount = layerCount
        self.layersSizeInBytes = layersSizeInBytes
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.billableSizeInGBs = billableSizeInGBs
        self.namespace = namespace
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.readme = readme
        self.timeLastPushed = timeLastPushed
        self.repositoryType = repositoryType
        self.isTopLevel = isTopLevel
        self.upstreamUrl = upstreamUrl
        self.upstreamUsername = upstreamUsername
        self.upstreamSecretId = upstreamSecretId
        self.multiRegionPeers = multiRegionPeers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerRepository: CustomStringConvertible {
    public var description: String { "ContainerRepository()" }
}