import Foundation
import OCICommon

// MARK: - OracleDbAwsKey

public struct OracleDbAwsKey: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var oracleDbConnectorId: String?
    public var oracleDbAwsKeyPoolId: String?
    public var isOracleAwsKeyUsed: Bool?
    public var refCount: Int?
    public var displayName: String?
    public var awsKeyArn: String?
    public var awsAccountId: String?
    public var type: String?
    public var isAwsKeyEnabled: Bool?
    public var location: String?
    public var properties: [String: String]?
    public var replicationMetadata: ReplicationMetadata?
    public var lifecycleState: OracleDbAwsKeyLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, oracleDbConnectorId, oracleDbAwsKeyPoolId, isOracleAwsKeyUsed, refCount, displayName, awsKeyArn, awsAccountId, type, isAwsKeyEnabled, location, properties, replicationMetadata, lifecycleState, lifecycleStateDetails, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                oracleDbConnectorId: String? = nil,
                oracleDbAwsKeyPoolId: String? = nil,
                isOracleAwsKeyUsed: Bool? = nil,
                refCount: Int? = nil,
                displayName: String? = nil,
                awsKeyArn: String? = nil,
                awsAccountId: String? = nil,
                type: String? = nil,
                isAwsKeyEnabled: Bool? = nil,
                location: String? = nil,
                properties: [String: String]? = nil,
                replicationMetadata: ReplicationMetadata? = nil,
                lifecycleState: OracleDbAwsKeyLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.oracleDbConnectorId = oracleDbConnectorId
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.isOracleAwsKeyUsed = isOracleAwsKeyUsed
        self.refCount = refCount
        self.displayName = displayName
        self.awsKeyArn = awsKeyArn
        self.awsAccountId = awsAccountId
        self.type = type
        self.isAwsKeyEnabled = isAwsKeyEnabled
        self.location = location
        self.properties = properties
        self.replicationMetadata = replicationMetadata
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

extension OracleDbAwsKey: CustomStringConvertible {
    public var description: String { "OracleDbAwsKey()" }
}