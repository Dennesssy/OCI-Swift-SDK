import Foundation
import OCICommon

// MARK: - GenerateSqlFromNlJob

public struct GenerateSqlFromNlJob: Codable, Sendable {

    public var id: String?
    public var semanticStoreId: String?
    public var timeAccepted: Date?
    public var lifecycleState: LifecycleStateEnum
    public var lifecycleDetails: String?
    public var modelId: String?
    public var description: String?
    public var displayName: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var inputNaturalLanguageQuery: String?
    public var jobOutput: JSONValue?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, semanticStoreId, timeAccepted, lifecycleState, lifecycleDetails, modelId, description, displayName, timeStarted, timeFinished, inputNaturalLanguageQuery, jobOutput, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                semanticStoreId: String? = nil,
                timeAccepted: Date? = nil,
                lifecycleState: LifecycleStateEnum,
                lifecycleDetails: String? = nil,
                modelId: String? = nil,
                description: String? = nil,
                displayName: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                inputNaturalLanguageQuery: String? = nil,
                jobOutput: JSONValue? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.semanticStoreId = semanticStoreId
        self.timeAccepted = timeAccepted
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.modelId = modelId
        self.description = description
        self.displayName = displayName
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.inputNaturalLanguageQuery = inputNaturalLanguageQuery
        self.jobOutput = jobOutput
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
