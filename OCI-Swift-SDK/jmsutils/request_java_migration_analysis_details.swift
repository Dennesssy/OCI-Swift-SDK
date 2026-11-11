import Foundation
import OCICommon

// MARK: - RequestJavaMigrationAnalysisDetails

public struct RequestJavaMigrationAnalysisDetails: Codable, Sendable {

    public var compartmentId: String?
    public var targets: [JavaMigrationAnalysisTarget]
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, targets, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                targets: [JavaMigrationAnalysisTarget],
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

extension RequestJavaMigrationAnalysisDetails: CustomStringConvertible {
    public var description: String { "RequestJavaMigrationAnalysisDetails()" }
}