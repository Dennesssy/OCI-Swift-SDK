import Foundation

// MARK: - SecurityAttributeSummary

public struct SecurityAttributeSummary: Codable, Sendable {

    public var compartmentId: String?
    public var securityAttributeNamespaceId: String?
    public var securityAttributeNamespaceName: String?
    public var id: String?
    public var name: String?
    public var description: String?
    public var type: String?
    public var isRetired: Bool?
    public var lifecycleState: SecurityAttributeLifecycleStateEnum?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, securityAttributeNamespaceId, securityAttributeNamespaceName, id, name, description, type, isRetired, lifecycleState, timeCreated
    }

    public init(
                compartmentId: String? = nil,
                securityAttributeNamespaceId: String? = nil,
                securityAttributeNamespaceName: String? = nil,
                id: String? = nil,
                name: String? = nil,
                description: String? = nil,
                type: String? = nil,
                isRetired: Bool? = nil,
                lifecycleState: SecurityAttributeLifecycleStateEnum? = nil,
                timeCreated: Date? = nil
    ) {
        self.compartmentId = compartmentId
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.securityAttributeNamespaceName = securityAttributeNamespaceName
        self.id = id
        self.name = name
        self.description = description
        self.type = type
        self.isRetired = isRetired
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
