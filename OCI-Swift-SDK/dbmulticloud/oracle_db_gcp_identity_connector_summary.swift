import Foundation
import OCICommon

// MARK: - OracleDbGcpIdentityConnectorSummary

public struct OracleDbGcpIdentityConnectorSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var issuerUrl: String?
    public var projectId: String?
    public var resourceId: String?
    public var gcpLocation: String?
    public var gcpWorkloadIdentityPoolId: String?
    public var gcpWorkloadIdentityProviderId: String?
    public var gcpResourceServiceAgentId: String?
    public var gcpNodes: [GcpNodes]?
    public var gcpIdentityConnectivityStatus: OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum?
    public var lifecycleState: OracleDbGcpIdentityConnectorLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, issuerUrl, projectId, resourceId, gcpLocation, gcpWorkloadIdentityPoolId, gcpWorkloadIdentityProviderId, gcpResourceServiceAgentId, gcpNodes, gcpIdentityConnectivityStatus, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                issuerUrl: String? = nil,
                projectId: String? = nil,
                resourceId: String? = nil,
                gcpLocation: String? = nil,
                gcpWorkloadIdentityPoolId: String? = nil,
                gcpWorkloadIdentityProviderId: String? = nil,
                gcpResourceServiceAgentId: String? = nil,
                gcpNodes: [GcpNodes]? = nil,
                gcpIdentityConnectivityStatus: OracleDbGcpIdentityConnectorGcpIdentityConnectivityStatusEnum? = nil,
                lifecycleState: OracleDbGcpIdentityConnectorLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.issuerUrl = issuerUrl
        self.projectId = projectId
        self.resourceId = resourceId
        self.gcpLocation = gcpLocation
        self.gcpWorkloadIdentityPoolId = gcpWorkloadIdentityPoolId
        self.gcpWorkloadIdentityProviderId = gcpWorkloadIdentityProviderId
        self.gcpResourceServiceAgentId = gcpResourceServiceAgentId
        self.gcpNodes = gcpNodes
        self.gcpIdentityConnectivityStatus = gcpIdentityConnectivityStatus
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbGcpIdentityConnectorSummary: CustomStringConvertible {
    public var description: String { "OracleDbGcpIdentityConnectorSummary()" }
}