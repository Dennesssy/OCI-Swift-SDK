import Foundation
import OCICommon

// MARK: - RequestPerformanceTuningAnalysisDetails

public struct RequestPerformanceTuningAnalysisDetails: Codable, Sendable {

    public var compartmentId: String?
    public var targets: [PerformanceTuningAnalysisTarget]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, targets, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                targets: [PerformanceTuningAnalysisTarget],
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.targets = targets
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestPerformanceTuningAnalysisDetails: CustomStringConvertible {
    public var description: String { "RequestPerformanceTuningAnalysisDetails()" }
}