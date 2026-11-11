import Foundation

// MARK: - ValidationExternalAuthenticationStatus

public struct ValidationExternalAuthenticationStatus: Codable, Sendable {

    public var type: IdentityProviderTypeEnum?
    public var status: DatabaseToolsExternalAuthenticationStatusEnum?
    public var statusDetails: String?

    private enum CodingKeys: String, CodingKey {
        case type, status, statusDetails
    }

    public init(
                type: IdentityProviderTypeEnum? = nil,
                status: DatabaseToolsExternalAuthenticationStatusEnum? = nil,
                statusDetails: String? = nil
    ) {
        self.type = type
        self.status = status
        self.statusDetails = statusDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidationExternalAuthenticationStatus: CustomStringConvertible {
    public var description: String { "ValidationExternalAuthenticationStatus()" }
}