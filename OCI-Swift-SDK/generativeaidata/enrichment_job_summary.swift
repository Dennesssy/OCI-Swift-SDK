import Foundation
import OCICommon

// MARK: - EnrichmentJobSummary

public struct EnrichmentJobSummary: Codable, Sendable {

    public var id: String?
    public var semanticStoreId: String?
    public var enrichmentJobType: EnrichmentJobTypeEnum
    public var modelId: String?
    public var timeAccepted: Date?
    public var lifecycleState: LifecycleStateEnum
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, semanticStoreId, enrichmentJobType, modelId, timeAccepted, lifecycleState, displayName, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                semanticStoreId: String? = nil,
                enrichmentJobType: EnrichmentJobTypeEnum,
                modelId: String? = nil,
                timeAccepted: Date? = nil,
                lifecycleState: LifecycleStateEnum,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.semanticStoreId = semanticStoreId
        self.enrichmentJobType = enrichmentJobType
        self.modelId = modelId
        self.timeAccepted = timeAccepted
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnrichmentJobSummary: CustomStringConvertible {
    public var description: String { "EnrichmentJobSummary()" }
}