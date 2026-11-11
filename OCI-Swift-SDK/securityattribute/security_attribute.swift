import Foundation
import OCICommon

// MARK: - SecurityAttribute

public struct SecurityAttribute: Codable, Sendable {

    public var compartmentId: String?
    public var securityAttributeNamespaceId: String?
    public var securityAttributeNamespaceName: String?
    public var id: String?
    public var name: String?
    public var description: String?
    public var isRetired: Bool?
    public var timeCreated: Date?
    public var type: String?
    public var lifecycleState: SecurityAttributeLifecycleStateEnum?
    public var validator: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, securityAttributeNamespaceId, securityAttributeNamespaceName, id, name, description, isRetired, timeCreated, type, lifecycleState, validator
    }

    public init(
                compartmentId: String? = nil,
                securityAttributeNamespaceId: String? = nil,
                securityAttributeNamespaceName: String? = nil,
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                isRetired: Bool? = nil,
                timeCreated: Date? = nil,
                type: String? = nil,
                lifecycleState: SecurityAttributeLifecycleStateEnum? = nil,
                validator: JSONValue? = nil
    ) {
        self.compartmentId = compartmentId
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.securityAttributeNamespaceName = securityAttributeNamespaceName
        self.id = id
        self.name = name
        self.description = description
        self.isRetired = isRetired
        self.timeCreated = timeCreated
        self.type = type
        self.lifecycleState = lifecycleState
        self.validator = validator
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
