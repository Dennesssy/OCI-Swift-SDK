import Foundation
import OCICommon

// MARK: - UpdateCostAnomalyEventDetails

public struct UpdateCostAnomalyEventDetails: Codable, Sendable {

    public var feedbackResponse: CostAnomalyEventFeedbackResponseEnum?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case feedbackResponse, definedTags, freeformTags
    }

    public init(
                feedbackResponse: CostAnomalyEventFeedbackResponseEnum? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.feedbackResponse = feedbackResponse
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCostAnomalyEventDetails: CustomStringConvertible {
    public var description: String { "UpdateCostAnomalyEventDetails()" }
}