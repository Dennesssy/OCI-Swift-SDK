import Foundation
import OCICommon

// MARK: - UpdateAiDataPlatformDetails

public struct UpdateAiDataPlatformDetails: Codable, Sendable {

    public var displayName: String?
    public var aiDataPlatformType: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, aiDataPlatformType, freeformTags, definedTags, systemTags
    }

    public init(
                displayName: String? = nil,
                aiDataPlatformType: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.aiDataPlatformType = aiDataPlatformType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAiDataPlatformDetails: CustomStringConvertible {
    public var description: String { "UpdateAiDataPlatformDetails()" }
}