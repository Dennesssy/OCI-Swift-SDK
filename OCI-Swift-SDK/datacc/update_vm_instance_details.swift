import Foundation
import OCICommon

// MARK: - UpdateVmInstanceDetails

public struct UpdateVmInstanceDetails: Codable, Sendable {

    public var description: String?
    public var displayName: String?
    public var dataStorageSizeInGBs: Double?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case description, displayName, dataStorageSizeInGBs, definedTags, freeformTags
    }

    public init(
                description: String? = nil,
                displayName: String? = nil,
                dataStorageSizeInGBs: Double? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.description = description
        self.displayName = displayName
        self.dataStorageSizeInGBs = dataStorageSizeInGBs
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
