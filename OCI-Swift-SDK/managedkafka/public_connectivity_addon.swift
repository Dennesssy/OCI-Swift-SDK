import Foundation

// MARK: - PublicConnectivityAddon

public struct PublicConnectivityAddon: Codable, Sendable {

    public var name: String?
    public var bootstrapUrl: String?
    public var networkCidrs: [String]
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: KafkaClusterAddonLifecycleStateEnum
    public var authenticationMechanism: AuthenticationMechanismEnum

    private enum CodingKeys: String, CodingKey {
        case name, bootstrapUrl, networkCidrs, description, timeCreated, timeUpdated, lifecycleState, authenticationMechanism
    }

    public init(
                name: String? = nil,
                bootstrapUrl: String? = nil,
                networkCidrs: [String],
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: KafkaClusterAddonLifecycleStateEnum,
                authenticationMechanism: AuthenticationMechanismEnum
    ) {
        self.name = name
        self.bootstrapUrl = bootstrapUrl
        self.networkCidrs = networkCidrs
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.authenticationMechanism = authenticationMechanism
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
