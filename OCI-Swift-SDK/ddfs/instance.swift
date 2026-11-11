import Foundation
import OCICommon

// MARK: - Instance

public struct Instance: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var idcsUrl: String?
    public var timeCreated: Date?
    public var lifecycleState: InstanceLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var publicIp: String?
    public var fhirServiceEndpoint: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, idcsUrl, timeCreated, lifecycleState, freeformTags, definedTags, publicIp, fhirServiceEndpoint, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                idcsUrl: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: InstanceLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                publicIp: String? = nil,
                fhirServiceEndpoint: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.idcsUrl = idcsUrl
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.publicIp = publicIp
        self.fhirServiceEndpoint = fhirServiceEndpoint
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Instance: CustomStringConvertible {
    public var description: String { "Instance()" }
}