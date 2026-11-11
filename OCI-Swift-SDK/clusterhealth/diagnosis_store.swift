import Foundation
import OCICommon

// MARK: - DiagnosisStore

public struct DiagnosisStore: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var lifecycleState: DiagnosisStoreLifecycleStateEnum
    public var lifecycleDetails: String?
    public var objectStoreNamespace: String?
    public var objectStoreBucket: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lastAcceptedRequestToken: String?
    public var lastCompletedRequestToken: String?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, lifecycleState, lifecycleDetails, objectStoreNamespace, objectStoreBucket, timeCreated, timeUpdated, lastAcceptedRequestToken, lastCompletedRequestToken, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DiagnosisStoreLifecycleStateEnum,
                lifecycleDetails: String? = nil,
                objectStoreNamespace: String? = nil,
                objectStoreBucket: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lastAcceptedRequestToken: String? = nil,
                lastCompletedRequestToken: String? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.objectStoreNamespace = objectStoreNamespace
        self.objectStoreBucket = objectStoreBucket
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lastAcceptedRequestToken = lastAcceptedRequestToken
        self.lastCompletedRequestToken = lastCompletedRequestToken
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiagnosisStore: CustomStringConvertible {
    public var description: String { "DiagnosisStore()" }
}