import Foundation
import OCICommon

// MARK: - SdkSummary

public struct SdkSummary: Codable, Sendable {

    public var id: String?
    public var timeCreated: Date?
    public var displayName: String?
    public var targetLanguage: String?
    public var compartmentId: String?
    public var timeUpdated: Date?
    public var lifecycleState: SdkLifecycleStateEnum?
    public var locks: [ResourceLock]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, timeCreated, displayName, targetLanguage, compartmentId, timeUpdated, lifecycleState, locks, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                timeCreated: Date? = nil,
                displayName: String? = nil,
                targetLanguage: String? = nil,
                compartmentId: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: SdkLifecycleStateEnum? = nil,
                locks: [ResourceLock]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.timeCreated = timeCreated
        self.displayName = displayName
        self.targetLanguage = targetLanguage
        self.compartmentId = compartmentId
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SdkSummary: CustomStringConvertible {
    public var description: String { "SdkSummary()" }
}