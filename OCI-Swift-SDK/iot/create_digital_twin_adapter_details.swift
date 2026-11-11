import Foundation
import OCICommon

// MARK: - CreateDigitalTwinAdapterDetails

public struct CreateDigitalTwinAdapterDetails: Codable, Sendable {

    public var iotDomainId: String?
    public var digitalTwinModelId: String?
    public var digitalTwinModelSpecUri: String?
    public var displayName: String?
    public var description: String?
    public var inboundEnvelope: DigitalTwinAdapterInboundEnvelope?
    public var inboundRoutes: [DigitalTwinAdapterInboundRoute]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, digitalTwinModelId, digitalTwinModelSpecUri, displayName, description, inboundEnvelope, inboundRoutes, freeformTags, definedTags
    }

    public init(
                iotDomainId: String? = nil,
                digitalTwinModelId: String? = nil,
                digitalTwinModelSpecUri: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                inboundEnvelope: DigitalTwinAdapterInboundEnvelope? = nil,
                inboundRoutes: [DigitalTwinAdapterInboundRoute]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.digitalTwinModelId = digitalTwinModelId
        self.digitalTwinModelSpecUri = digitalTwinModelSpecUri
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
