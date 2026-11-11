import Foundation

// MARK: - IdentityProviderGroupSummary

public struct IdentityProviderGroupSummary: Codable, Sendable {

    public var id: String?
    public var identityProviderId: String?
    public var displayName: String?
    public var name: String?
    public var externalIdentifier: String?
    public var timeCreated: Date?
    public var timeModified: Date?

    private enum CodingKeys: String, CodingKey {
        case id, identityProviderId, displayName, name, externalIdentifier, timeCreated, timeModified
    }

    public init(
                id: String? = nil,
                identityProviderId: String? = nil,
                displayName: String? = nil,
                name: String? = nil,
                externalIdentifier: String? = nil,
                timeCreated: Date? = nil,
                timeModified: Date? = nil
    ) {
        self.id = id
        self.identityProviderId = identityProviderId
        self.displayName = displayName
        self.name = name
        self.externalIdentifier = externalIdentifier
        self.timeCreated = timeCreated
        self.timeModified = timeModified
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IdentityProviderGroupSummary: CustomStringConvertible {
    public var description: String { "IdentityProviderGroupSummary()" }
}