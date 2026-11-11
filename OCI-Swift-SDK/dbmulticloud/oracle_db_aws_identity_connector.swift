import Foundation
import OCICommon

// MARK: - OracleDbAwsIdentityConnector

public struct OracleDbAwsIdentityConnector: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var resourceId: String?
    public var issuerUrl: String?
    public var serviceRoleDetails: [ServiceRoleDetails]
    public var awsLocation: String?
    public var displayName: String?
    public var oidcScope: String?
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
        case id, compartmentId, resourceId, issuerUrl, serviceRoleDetails, awsLocation, displayName, oidcScope, awsStsPrivateEndpoint, awsAccountId, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                resourceId: String? = nil,
                issuerUrl: String? = nil,
                serviceRoleDetails: [ServiceRoleDetails],
                awsLocation: String? = nil,
                displayName: String? = nil,
                oidcScope: String? = nil,
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
        self.compartmentId = compartmentId
        self.resourceId = resourceId
        self.issuerUrl = issuerUrl
        self.serviceRoleDetails = serviceRoleDetails
        self.awsLocation = awsLocation
        self.displayName = displayName
        self.oidcScope = oidcScope
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

extension OracleDbAwsIdentityConnector: CustomStringConvertible {
    public var description: String { "OracleDbAwsIdentityConnector()" }
}