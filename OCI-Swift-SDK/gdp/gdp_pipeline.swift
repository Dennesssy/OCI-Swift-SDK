import Foundation
import OCICommon

// MARK: - GdpPipeline

public struct GdpPipeline: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var lifecycleState: GdpPipelineLifecycleStateEnum
    public var displayName: String?
    public var pipelineType: GdpPipelinePipelineTypeEnum
    public var peeringRegion: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var lifecycleDetails: String?
    public var description: String?
    public var serviceLogGroupId: String?
    public var fileTypes: [String]?
    public var authorizationDetails: String?
    public var bucketDetails: [BucketDetailsDefinition]?
    public var peeredGdpPipelineId: String?
    public var isFileOverrideInDestinationEnabled: Bool?
    public var isScanningEnabled: Bool?
    public var isChunkingEnabled: Bool?
    public var isApprovalNeeded: Bool?
    public var approvalKeyVaultId: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, lifecycleState, displayName, pipelineType, peeringRegion, timeCreated, timeUpdated, freeformTags, definedTags, lifecycleDetails, description, serviceLogGroupId, fileTypes, authorizationDetails, bucketDetails, peeredGdpPipelineId, isFileOverrideInDestinationEnabled, isScanningEnabled, isChunkingEnabled, isApprovalNeeded, approvalKeyVaultId, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: GdpPipelineLifecycleStateEnum,
                displayName: String? = nil,
                pipelineType: GdpPipelinePipelineTypeEnum,
                peeringRegion: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                lifecycleDetails: String? = nil,
                description: String? = nil,
                serviceLogGroupId: String? = nil,
                fileTypes: [String]? = nil,
                authorizationDetails: String? = nil,
                bucketDetails: [BucketDetailsDefinition]? = nil,
                peeredGdpPipelineId: String? = nil,
                isFileOverrideInDestinationEnabled: Bool? = nil,
                isScanningEnabled: Bool? = nil,
                isChunkingEnabled: Bool? = nil,
                isApprovalNeeded: Bool? = nil,
                approvalKeyVaultId: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.pipelineType = pipelineType
        self.peeringRegion = peeringRegion
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.lifecycleDetails = lifecycleDetails
        self.description = description
        self.serviceLogGroupId = serviceLogGroupId
        self.fileTypes = fileTypes
        self.authorizationDetails = authorizationDetails
        self.bucketDetails = bucketDetails
        self.peeredGdpPipelineId = peeredGdpPipelineId
        self.isFileOverrideInDestinationEnabled = isFileOverrideInDestinationEnabled
        self.isScanningEnabled = isScanningEnabled
        self.isChunkingEnabled = isChunkingEnabled
        self.isApprovalNeeded = isApprovalNeeded
        self.approvalKeyVaultId = approvalKeyVaultId
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
