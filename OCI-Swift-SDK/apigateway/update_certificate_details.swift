import Foundation
import OCICommon

// MARK: - UpdateCertificateDetails

public struct UpdateCertificateDetails: Codable, Sendable {

    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCertificateDetails: CustomStringConvertible {
    public var description: String { "UpdateCertificateDetails()" }
}