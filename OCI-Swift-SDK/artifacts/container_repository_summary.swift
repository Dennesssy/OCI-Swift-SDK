import Foundation
import OCICommon

// MARK: - ContainerRepositorySummary

public struct ContainerRepositorySummary: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var id: String?
    public var imageCount: Int?
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
    public var repositoryType: ContainerRepositoryRepositoryTypeEnum?
    public var isTopLevel: Bool?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, id, imageCount, isPublic, layerCount, layersSizeInBytes, lifecycleState, timeCreated, billableSizeInGBs, namespace, freeformTags, definedTags, systemTags, repositoryType, isTopLevel
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                imageCount: Int? = nil,
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
                repositoryType: ContainerRepositoryRepositoryTypeEnum? = nil,
                isTopLevel: Bool? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.id = id
        self.imageCount = imageCount
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
        self.repositoryType = repositoryType
        self.isTopLevel = isTopLevel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerRepositorySummary: CustomStringConvertible {
    public var description: String { "ContainerRepositorySummary()" }
}