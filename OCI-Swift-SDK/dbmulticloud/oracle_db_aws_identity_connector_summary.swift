import Foundation
import OCICommon

// MARK: - OracleDbAwsIdentityConnectorSummary

public struct OracleDbAwsIdentityConnectorSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var resourceId: String?
    public var issuerUrl: String?
    public var oidcScope: String?
    public var serviceRoleDetails: [ServiceRoleDetails]?
    public var awsLocation: String?
    public var awsStsPrivateEndpoint: String?
    public var awsAccountId: String?
    public var lifecycleState: OracleDbAwsIdentityConnectorLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, resourceId, issuerUrl, oidcScope, serviceRoleDetails, awsLocation, awsStsPrivateEndpoint, awsAccountId, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                resourceId: String? = nil,
                issuerUrl: String? = nil,
                oidcScope: String? = nil,
                serviceRoleDetails: [ServiceRoleDetails]? = nil,
                awsLocation: String? = nil,
                awsStsPrivateEndpoint: String? = nil,
                awsAccountId: String? = nil,
                lifecycleState: OracleDbAwsIdentityConnectorLifecycleStateEnum? = nil,
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
        self.resourceId = resourceId
        self.issuerUrl = issuerUrl
        self.oidcScope = oidcScope
        self.serviceRoleDetails = serviceRoleDetails
        self.awsLocation = awsLocation
        self.awsStsPrivateEndpoint = awsStsPrivateEndpoint
        self.awsAccountId = awsAccountId
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

extension OracleDbAwsIdentityConnectorSummary: CustomStringConvertible {
    public var description: String { "OracleDbAwsIdentityConnectorSummary()" }
}