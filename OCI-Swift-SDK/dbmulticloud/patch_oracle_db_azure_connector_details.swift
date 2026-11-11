import Foundation
import OCICommon

// MARK: - PatchOracleDbAzureConnectorDetails

public struct PatchOracleDbAzureConnectorDetails: Codable, Sendable {

    public var newVersion: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case newVersion, freeformTags, definedTags, systemTags
    }

    public init(
                newVersion: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.newVersion = newVersion
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchOracleDbAzureConnectorDetails: CustomStringConvertible {
    public var description: String { "PatchOracleDbAzureConnectorDetails()" }
}