import Foundation
import OCICommon

// MARK: - UpdateDigitalTwinAdapterDetails

public struct UpdateDigitalTwinAdapterDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var inboundEnvelope: DigitalTwinAdapterInboundEnvelope?
    public var inboundRoutes: [DigitalTwinAdapterInboundRoute]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, inboundEnvelope, inboundRoutes, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                inboundEnvelope: DigitalTwinAdapterInboundEnvelope? = nil,
                inboundRoutes: [DigitalTwinAdapterInboundRoute]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.inboundEnvelope = inboundEnvelope
        self.inboundRoutes = inboundRoutes
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
