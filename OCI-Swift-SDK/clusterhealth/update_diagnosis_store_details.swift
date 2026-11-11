import Foundation
import OCICommon

// MARK: - UpdateDiagnosisStoreDetails

public struct UpdateDiagnosisStoreDetails: Codable, Sendable {

    public var displayName: String?
    public var objectStoreNamespace: String?
    public var objectStoreBucket: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, objectStoreNamespace, objectStoreBucket, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                objectStoreNamespace: String? = nil,
                objectStoreBucket: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
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

extension UpdateDiagnosisStoreDetails: CustomStringConvertible {
    public var description: String { "UpdateDiagnosisStoreDetails()" }
}