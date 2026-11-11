import Foundation
import OCICommon

// MARK: - UpdateOracleDbGcpIdentityConnectorDetails

public struct UpdateOracleDbGcpIdentityConnectorDetails: Codable, Sendable {

    public var displayName: String?
    public var issuerUrl: String?
    public var projectId: String?
    public var resourceId: String?
    public var gcpLocation: String?
    public var gcpWorkloadIdentityPoolId: String?
    public var gcpWorkloadIdentityProviderId: String?
    public var gcpResourceServiceAgentId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, issuerUrl, projectId, resourceId, gcpLocation, gcpWorkloadIdentityPoolId, gcpWorkloadIdentityProviderId, gcpResourceServiceAgentId, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                issuerUrl: String? = nil,
                projectId: String? = nil,
                resourceId: String? = nil,
                gcpLocation: String? = nil,
                gcpWorkloadIdentityPoolId: String? = nil,
                gcpWorkloadIdentityProviderId: String? = nil,
                gcpResourceServiceAgentId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.issuerUrl = issuerUrl
        self.projectId = projectId
        self.resourceId = resourceId
        self.gcpLocation = gcpLocation
        self.gcpWorkloadIdentityPoolId = gcpWorkloadIdentityPoolId
        self.gcpWorkloadIdentityProviderId = gcpWorkloadIdentityProviderId
        self.gcpResourceServiceAgentId = gcpResourceServiceAgentId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbGcpIdentityConnectorDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbGcpIdentityConnectorDetails()" }
}