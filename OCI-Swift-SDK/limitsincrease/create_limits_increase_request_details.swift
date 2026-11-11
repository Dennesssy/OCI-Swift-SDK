import Foundation
import OCICommon

// MARK: - CreateLimitsIncreaseRequestDetails

public struct CreateLimitsIncreaseRequestDetails: Codable, Sendable {

    public var displayName: String?
    public var compartmentId: String?
    public var justification: String?
    public var limitsIncreaseItemRequests: [CreateLimitsIncreaseItemRequestDetails]
    public var subscriptionId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, compartmentId, justification, limitsIncreaseItemRequests, subscriptionId, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                compartmentId: String? = nil,
                justification: String? = nil,
                limitsIncreaseItemRequests: [CreateLimitsIncreaseItemRequestDetails],
                subscriptionId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.justification = justification
        self.limitsIncreaseItemRequests = limitsIncreaseItemRequests
        self.subscriptionId = subscriptionId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLimitsIncreaseRequestDetails: CustomStringConvertible {
    public var description: String { "CreateLimitsIncreaseRequestDetails()" }
}