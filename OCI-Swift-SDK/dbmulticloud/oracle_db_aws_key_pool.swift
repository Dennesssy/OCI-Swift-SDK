import Foundation
import OCICommon

// MARK: - OracleDbAwsKeyPool

public struct OracleDbAwsKeyPool: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var isReuseAllowed: Bool?
    public var isMultiRegionKeyPool: Bool?
    public var lifecycleState: OracleDbAwsKeyPoolLifecycleStateEnum?
    public var lifecycleStateDetails: String?
    public var replicationMetadata: ReplicationMetadata?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, isReuseAllowed, isMultiRegionKeyPool, lifecycleState, lifecycleStateDetails, replicationMetadata, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                isReuseAllowed: Bool? = nil,
                isMultiRegionKeyPool: Bool? = nil,
                lifecycleState: OracleDbAwsKeyPoolLifecycleStateEnum? = nil,
                lifecycleStateDetails: String? = nil,
                replicationMetadata: ReplicationMetadata? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.isReuseAllowed = isReuseAllowed
        self.isMultiRegionKeyPool = isMultiRegionKeyPool
        self.lifecycleState = lifecycleState
        self.lifecycleStateDetails = lifecycleStateDetails
        self.replicationMetadata = replicationMetadata
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

extension OracleDbAwsKeyPool: CustomStringConvertible {
    public var description: String { "OracleDbAwsKeyPool()" }
}