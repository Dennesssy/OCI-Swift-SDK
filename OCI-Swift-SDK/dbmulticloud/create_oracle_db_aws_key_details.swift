import Foundation
import OCICommon

// MARK: - CreateOracleDbAwsKeyDetails

public struct CreateOracleDbAwsKeyDetails: Codable, Sendable {

    public var compartmentId: String?
    public var oracleDbConnectorId: String?
    public var displayName: String?
    public var oracleDbAwsKeyPoolId: String?
    public var awsKeyArn: String?
    public var awsAccountId: String?
    public var type: String?
    public var location: String?
    public var isAwsKeyEnabled: Bool?
    public var properties: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, oracleDbConnectorId, displayName, oracleDbAwsKeyPoolId, awsKeyArn, awsAccountId, type, location, isAwsKeyEnabled, properties, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                oracleDbConnectorId: String? = nil,
                displayName: String? = nil,
                oracleDbAwsKeyPoolId: String? = nil,
                awsKeyArn: String? = nil,
                awsAccountId: String? = nil,
                type: String? = nil,
                location: String? = nil,
                isAwsKeyEnabled: Bool? = nil,
                properties: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.oracleDbConnectorId = oracleDbConnectorId
        self.displayName = displayName
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.awsKeyArn = awsKeyArn
        self.awsAccountId = awsAccountId
        self.type = type
        self.location = location
        self.isAwsKeyEnabled = isAwsKeyEnabled
        self.properties = properties
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbAwsKeyDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyDetails()" }
}