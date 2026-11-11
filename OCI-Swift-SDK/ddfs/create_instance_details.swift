import Foundation
import OCICommon

// MARK: - CreateInstanceDetails

public struct CreateInstanceDetails: Codable, Sendable {

    public var idcsUrl: String?
    public var compartmentId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case idcsUrl, compartmentId, displayName, freeformTags, definedTags
    }

    public init(
                idcsUrl: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.idcsUrl = idcsUrl
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateInstanceDetails: CustomStringConvertible {
    public var description: String { "CreateInstanceDetails()" }
}