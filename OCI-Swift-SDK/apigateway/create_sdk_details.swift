import Foundation
import OCICommon

// MARK: - CreateSdkDetails

public struct CreateSdkDetails: Codable, Sendable {

    public var targetLanguage: String?
    public var apiId: String?
    public var displayName: String?
    public var locks: [AddResourceLockDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var parameters: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case targetLanguage, apiId, displayName, locks, freeformTags, definedTags, parameters
    }

    public init(
                targetLanguage: String? = nil,
                apiId: String? = nil,
                displayName: String? = nil,
                locks: [AddResourceLockDetails]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                parameters: [String: String]? = nil
    ) {
        self.targetLanguage = targetLanguage
        self.apiId = apiId
        self.displayName = displayName
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.parameters = parameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSdkDetails: CustomStringConvertible {
    public var description: String { "CreateSdkDetails()" }
}