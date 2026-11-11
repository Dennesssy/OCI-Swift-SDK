import Foundation

// MARK: - OrdsDataAccessDetails

public struct OrdsDataAccessDetails: Codable, Sendable {

    public var dbAllowedIdentityDomainHost: String?

    private enum CodingKeys: String, CodingKey {
        case dbAllowedIdentityDomainHost
    }

    public init(
                dbAllowedIdentityDomainHost: String? = nil
    ) {
        self.dbAllowedIdentityDomainHost = dbAllowedIdentityDomainHost
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OrdsDataAccessDetails: CustomStringConvertible {
    public var description: String { "OrdsDataAccessDetails()" }
}