import Foundation
import OCICommon

// MARK: - EnrichmentJob

public struct EnrichmentJob: Codable, Sendable {

    public var id: String?
    public var semanticStoreId: String?
    public var enrichmentJobType: EnrichmentJobTypeEnum
    public var enrichmentJobConfiguration: JSONValue
    public var modelId: String?
    public var timeAccepted: Date?
    public var lifecycleDetails: String?
    public var lifecycleState: LifecycleStateEnum
    public var description: String?
    public var displayName: String?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var percentComplete: Float?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, semanticStoreId, enrichmentJobType, enrichmentJobConfiguration, modelId, timeAccepted, lifecycleDetails, lifecycleState, description, displayName, timeStarted, timeFinished, percentComplete, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                semanticStoreId: String? = nil,
                enrichmentJobType: EnrichmentJobTypeEnum,
                enrichmentJobConfiguration: JSONValue,
                modelId: String? = nil,
                timeAccepted: Date? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: LifecycleStateEnum,
                description: String? = nil,
                displayName: String? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                percentComplete: Float? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.semanticStoreId = semanticStoreId
        self.enrichmentJobType = enrichmentJobType
        self.enrichmentJobConfiguration = enrichmentJobConfiguration
        self.modelId = modelId
        self.timeAccepted = timeAccepted
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
        self.description = description
        self.displayName = displayName
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.percentComplete = percentComplete
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
