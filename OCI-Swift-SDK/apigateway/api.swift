import Foundation
import OCICommon

// MARK: - Api

public struct Api: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var locks: [ResourceLock]?
    public var lifecycleState: ApiLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var specificationType: String?
    public var validationResults: [ApiValidationResult]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, timeCreated, timeUpdated, locks, lifecycleState, lifecycleDetails, specificationType, validationResults, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                locks: [ResourceLock]? = nil,
                lifecycleState: ApiLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                specificationType: String? = nil,
                validationResults: [ApiValidationResult]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.locks = locks
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.specificationType = specificationType
        self.validationResults = validationResults
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Api: CustomStringConvertible {
    public var description: String { "Api()" }
}