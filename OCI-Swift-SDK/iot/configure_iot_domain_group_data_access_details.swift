import Foundation

// MARK: - ConfigureIotDomainGroupDataAccessDetails

public struct ConfigureIotDomainGroupDataAccessDetails: Codable, Sendable {

    public var dbAllowListedVcnIds: [String]

    private enum CodingKeys: String, CodingKey {
        case dbAllowListedVcnIds
    }

    public init(
                dbAllowListedVcnIds: [String]
    ) {
        self.dbAllowListedVcnIds = dbAllowListedVcnIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ConfigureIotDomainGroupDataAccessDetails: CustomStringConvertible {
    public var description: String { "ConfigureIotDomainGroupDataAccessDetails()" }
}