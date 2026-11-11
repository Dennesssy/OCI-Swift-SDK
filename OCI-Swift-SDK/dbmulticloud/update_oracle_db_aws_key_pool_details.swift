import Foundation
import OCICommon

// MARK: - UpdateOracleDbAwsKeyPoolDetails

public struct UpdateOracleDbAwsKeyPoolDetails: Codable, Sendable {

    public var displayName: String?
    public var isReuseAllowed: Bool?
    public var isMultiRegionKeyPool: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, isReuseAllowed, isMultiRegionKeyPool, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                isReuseAllowed: Bool? = nil,
                isMultiRegionKeyPool: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.isReuseAllowed = isReuseAllowed
        self.isMultiRegionKeyPool = isMultiRegionKeyPool
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsKeyPoolDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyPoolDetails()" }
}