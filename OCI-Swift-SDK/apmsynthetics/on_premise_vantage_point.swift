import Foundation
import OCICommon

// MARK: - OnPremiseVantagePoint

public struct OnPremiseVantagePoint: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var name: String?
    public var type: OnPremiseVantagePointTypeEnum
    public var workersSummary: WorkersSummary?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, name, type, workersSummary, description, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                name: String? = nil,
                type: OnPremiseVantagePointTypeEnum,
                workersSummary: WorkersSummary? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.name = name
        self.type = type
        self.workersSummary = workersSummary
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
