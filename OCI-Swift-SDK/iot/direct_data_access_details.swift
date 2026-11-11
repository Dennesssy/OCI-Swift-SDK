import Foundation

// MARK: - DirectDataAccessDetails

public struct DirectDataAccessDetails: Codable, Sendable {

    public var dbAllowListedIdentityGroupNames: [String]

    private enum CodingKeys: String, CodingKey {
        case dbAllowListedIdentityGroupNames
    }

    public init(
                dbAllowListedIdentityGroupNames: [String]
    ) {
        self.dbAllowListedIdentityGroupNames = dbAllowListedIdentityGroupNames
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DirectDataAccessDetails: CustomStringConvertible {
    public var description: String { "DirectDataAccessDetails()" }
}