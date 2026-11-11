import Foundation
import OCICommon

// MARK: - CreateOracleDbGcpKeyRingDetails

public struct CreateOracleDbGcpKeyRingDetails: Codable, Sendable {

    public var compartmentId: String?
    public var oracleDbConnectorId: String?
    public var displayName: String?
    public var gcpKeyRingId: String?
    public var type: String?
    public var location: String?
    public var properties: [String: String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, oracleDbConnectorId, displayName, gcpKeyRingId, type, location, properties, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                oracleDbConnectorId: String? = nil,
                displayName: String? = nil,
                gcpKeyRingId: String? = nil,
                type: String? = nil,
                location: String? = nil,
                properties: [String: String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.oracleDbConnectorId = oracleDbConnectorId
        self.displayName = displayName
        self.gcpKeyRingId = gcpKeyRingId
        self.type = type
        self.location = location
        self.properties = properties
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOracleDbGcpKeyRingDetails: CustomStringConvertible {
    public var description: String { "CreateOracleDbGcpKeyRingDetails()" }
}