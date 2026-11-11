import Foundation
import OCICommon

// MARK: - UpdateDeploymentDetails

public struct UpdateDeploymentDetails: Codable, Sendable {

    public var displayName: String?
    public var specification: ApiSpecification?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, specification, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                specification: ApiSpecification? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.specification = specification
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDeploymentDetails: CustomStringConvertible {
    public var description: String { "UpdateDeploymentDetails()" }
}