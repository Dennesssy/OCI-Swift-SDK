import Foundation
import OCICommon

// MARK: - OracleDbGcpKeySummary

public struct OracleDbGcpKeySummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var gcpKeyId: String?
    public var oracleDbGcpKeyRingId: String?
    public var lifecycleState: OracleDbGcpKeyLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var resourceType: String?
    public var gcpKeyProperties: JSONValue?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, gcpKeyId, oracleDbGcpKeyRingId, lifecycleState, lifecycleStateDetails, resourceType, gcpKeyProperties, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                gcpKeyId: String? = nil,
                oracleDbGcpKeyRingId: String? = nil,
                lifecycleState: OracleDbGcpKeyLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                resourceType: String? = nil,
                gcpKeyProperties: JSONValue? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.gcpKeyId = gcpKeyId
        self.oracleDbGcpKeyRingId = oracleDbGcpKeyRingId
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.resourceType = resourceType
        self.gcpKeyProperties = gcpKeyProperties
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

extension OracleDbGcpKeySummary: CustomStringConvertible {
    public var description: String { "OracleDbGcpKeySummary()" }
}