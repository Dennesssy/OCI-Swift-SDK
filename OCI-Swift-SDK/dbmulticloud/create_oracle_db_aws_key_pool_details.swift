import Foundation
import OCICommon

// MARK: - CreateOracleDbAwsKeyPoolDetails

public struct CreateOracleDbAwsKeyPoolDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var isReuseAllowed: Bool?
    public var isMultiRegionKeyPool: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, isReuseAllowed, isMultiRegionKeyPool, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                isReuseAllowed: Bool? = nil,
                isMultiRegionKeyPool: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
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

extension CreateOracleDbAwsKeyPoolDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbAwsKeyPoolDetails()" }
}