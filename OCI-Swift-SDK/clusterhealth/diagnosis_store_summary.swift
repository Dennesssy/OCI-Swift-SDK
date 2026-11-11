import Foundation
import OCICommon

// MARK: - DiagnosisStoreSummary

public struct DiagnosisStoreSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var lifecycleState: DiagnosisStoreLifecycleStateEnum
    public var objectStoreNamespace: String?
    public var objectStoreBucket: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, lifecycleState, objectStoreNamespace, objectStoreBucket, timeCreated, timeUpdated, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: DiagnosisStoreLifecycleStateEnum,
                objectStoreNamespace: String? = nil,
                objectStoreBucket: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.objectStoreNamespace = objectStoreNamespace
        self.objectStoreBucket = objectStoreBucket
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

extension DiagnosisStoreSummary: CustomStringConvertible {
    public var description: String { "DiagnosisStoreSummary()" }
}