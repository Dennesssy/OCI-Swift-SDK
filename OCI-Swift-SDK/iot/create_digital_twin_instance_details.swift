import Foundation
import OCICommon

// MARK: - CreateDigitalTwinInstanceDetails

public struct CreateDigitalTwinInstanceDetails: Codable, Sendable {

    public var iotDomainId: String?
    public var connectivityType: DigitalTwinInstanceConnectivityTypeEnum?
    public var authId: String?
    public var externalKey: String?
    public var displayName: String?
    public var description: String?
    public var digitalTwinAdapterId: String?
    public var digitalTwinModelId: String?
    public var digitalTwinModelSpecUri: String?
    public var gateways: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, connectivityType, authId, externalKey, displayName, description, digitalTwinAdapterId, digitalTwinModelId, digitalTwinModelSpecUri, gateways, freeformTags, definedTags
    }

    public init(
                iotDomainId: String? = nil,
                connectivityType: DigitalTwinInstanceConnectivityTypeEnum? = nil,
                authId: String? = nil,
                externalKey: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                digitalTwinAdapterId: String? = nil,
                digitalTwinModelId: String? = nil,
                digitalTwinModelSpecUri: String? = nil,
                gateways: [String]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.connectivityType = connectivityType
        self.authId = authId
        self.externalKey = externalKey
        self.displayName = displayName
        self.description = description
        self.digitalTwinAdapterId = digitalTwinAdapterId
        self.digitalTwinModelId = digitalTwinModelId
        self.digitalTwinModelSpecUri = digitalTwinModelSpecUri
        self.gateways = gateways
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
