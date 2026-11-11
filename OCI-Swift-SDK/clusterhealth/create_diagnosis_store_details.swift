import Foundation
import OCICommon

// MARK: - CreateDiagnosisStoreDetails

public struct CreateDiagnosisStoreDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var objectStoreNamespace: String?
    public var objectStoreBucket: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, objectStoreNamespace, objectStoreBucket, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                objectStoreNamespace: String? = nil,
                objectStoreBucket: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.objectStoreNamespace = objectStoreNamespace
        self.objectStoreBucket = objectStoreBucket
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDiagnosisStoreDetails: CustomStringConvertible {
    public var description: String { "CreateDiagnosisStoreDetails()" }
}