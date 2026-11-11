import Foundation

// MARK: - InstallPublicConnectivityAddonDetails

public struct InstallPublicConnectivityAddonDetails: Codable, Sendable {

    public var name: String?
    public var networkCidrs: [String]
    public var description: String?
    public var authenticationMechanism: AuthenticationMechanismEnum

    private enum CodingKeys: String, CodingKey {
        case name, networkCidrs, description, authenticationMechanism
    }

    public init(
                name: String? = nil,
                networkCidrs: [String],
                description: String? = nil,
                authenticationMechanism: AuthenticationMechanismEnum
    ) {
        self.name = name
        self.networkCidrs = networkCidrs
        self.description = description
        self.authenticationMechanism = authenticationMechanism
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
