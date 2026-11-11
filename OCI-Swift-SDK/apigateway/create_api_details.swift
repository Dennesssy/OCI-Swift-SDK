import Foundation
import OCICommon

// MARK: - CreateApiDetails

public struct CreateApiDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var locks: [AddResourceLockDetails]?
    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, freeformTags, definedTags, locks, content
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                locks: [AddResourceLockDetails]? = nil,
                content: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.locks = locks
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateApiDetails: CustomStringConvertible {
    public var description: String { "CreateApiDetails()" }
}