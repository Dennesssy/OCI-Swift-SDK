import Foundation
import OCICommon

// MARK: - UpdateOracleDbAwsIdentityConnectorDetails

public struct UpdateOracleDbAwsIdentityConnectorDetails: Codable, Sendable {

    public var displayName: String?
    public var resourceId: String?
    public var oidcScope: String?
    public var issuerUrl: String?
    public var serviceRoleDetails: [ServiceRoleDetail]?
    public var awsLocation: String?
    public var awsStsPrivateEndpoint: String?
    public var awsAccountId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, resourceId, oidcScope, issuerUrl, serviceRoleDetails, awsLocation, awsStsPrivateEndpoint, awsAccountId, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                resourceId: String? = nil,
                oidcScope: String? = nil,
                issuerUrl: String? = nil,
                serviceRoleDetails: [ServiceRoleDetail]? = nil,
                awsLocation: String? = nil,
                awsStsPrivateEndpoint: String? = nil,
                awsAccountId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.resourceId = resourceId
        self.oidcScope = oidcScope
        self.issuerUrl = issuerUrl
        self.serviceRoleDetails = serviceRoleDetails
        self.awsLocation = awsLocation
        self.awsStsPrivateEndpoint = awsStsPrivateEndpoint
        self.awsAccountId = awsAccountId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsIdentityConnectorDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsIdentityConnectorDetails()" }
}