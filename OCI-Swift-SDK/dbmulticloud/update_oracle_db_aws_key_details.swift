import Foundation
import OCICommon

// MARK: - UpdateOracleDbAwsKeyDetails

public struct UpdateOracleDbAwsKeyDetails: Codable, Sendable {

    public var displayName: String?
    public var oracleDbAwsKeyPoolId: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, oracleDbAwsKeyPoolId, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                oracleDbAwsKeyPoolId: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.oracleDbAwsKeyPoolId = oracleDbAwsKeyPoolId
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAwsKeyDetails: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAwsKeyDetails()" }
}