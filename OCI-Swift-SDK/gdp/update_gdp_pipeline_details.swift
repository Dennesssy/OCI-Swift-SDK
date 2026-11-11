import Foundation
import OCICommon

// MARK: - UpdateGdpPipelineDetails

public struct UpdateGdpPipelineDetails: Codable, Sendable {

    public var displayName: String?
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
        case displayName, description, serviceLogGroupId, fileTypes, authorizationDetails, isFileOverrideInDestinationEnabled, isScanningEnabled, isChunkingEnabled, isApprovalNeeded, approvalKeyVaultId, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
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
        self.displayName = displayName
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
