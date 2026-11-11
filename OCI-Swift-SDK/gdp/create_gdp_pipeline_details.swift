import Foundation
import OCICommon

// MARK: - CreateGdpPipelineDetails

public struct CreateGdpPipelineDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var pipelineType: GdpPipelinePipelineTypeEnum
    public var bucketDetails: [BucketDetailsDefinition]
    public var peeringRegion: String?
    public var description: String?
    public var serviceLogGroupId: String?
    public var fileTypes: [String]?
    public var authorizationDetails: String?
    public var isFileOverrideInDestinationEnabled: Bool?
    public var isScanningEnabled: Bool?
    public var isChunkingEnabled: Bool?
    public var isApprovalNeeded: Bool?
    public var approvalKeyVaultId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, pipelineType, bucketDetails, peeringRegion, description, serviceLogGroupId, fileTypes, authorizationDetails, isFileOverrideInDestinationEnabled, isScanningEnabled, isChunkingEnabled, isApprovalNeeded, approvalKeyVaultId, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                pipelineType: GdpPipelinePipelineTypeEnum,
                bucketDetails: [BucketDetailsDefinition],
                peeringRegion: String? = nil,
                description: String? = nil,
                serviceLogGroupId: String? = nil,
                fileTypes: [String]? = nil,
                authorizationDetails: String? = nil,
                isFileOverrideInDestinationEnabled: Bool? = nil,
                isScanningEnabled: Bool? = nil,
                isChunkingEnabled: Bool? = nil,
                isApprovalNeeded: Bool? = nil,
                approvalKeyVaultId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.pipelineType = pipelineType
        self.bucketDetails = bucketDetails
        self.peeringRegion = peeringRegion
        self.description = description
        self.serviceLogGroupId = serviceLogGroupId
        self.fileTypes = fileTypes
        self.authorizationDetails = authorizationDetails
        self.isFileOverrideInDestinationEnabled = isFileOverrideInDestinationEnabled
        self.isScanningEnabled = isScanningEnabled
        self.isChunkingEnabled = isChunkingEnabled
        self.isApprovalNeeded = isApprovalNeeded
        self.approvalKeyVaultId = approvalKeyVaultId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
