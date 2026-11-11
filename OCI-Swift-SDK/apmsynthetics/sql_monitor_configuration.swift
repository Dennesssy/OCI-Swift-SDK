import Foundation

// MARK: - SqlMonitorConfiguration

public struct SqlMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var query: String?
    public var databaseAuthenticationDetails: BasicAuthenticationDetails?
    public var databaseRole: String?
    public var connectionString: String?
    public var databaseWalletDetails: DatabaseWalletDetails?
    public var databaseType: DatabaseTypeEnum?
    public var databaseConnectionType: DatabaseConnectionTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, query, databaseAuthenticationDetails, databaseRole, connectionString, databaseWalletDetails, databaseType, databaseConnectionType
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                query: String? = nil,
                databaseAuthenticationDetails: BasicAuthenticationDetails? = nil,
                databaseRole: String? = nil,
                connectionString: String? = nil,
                databaseWalletDetails: DatabaseWalletDetails? = nil,
                databaseType: DatabaseTypeEnum? = nil,
                databaseConnectionType: DatabaseConnectionTypeEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.query = query
        self.databaseAuthenticationDetails = databaseAuthenticationDetails
        self.databaseRole = databaseRole
        self.connectionString = connectionString
        self.databaseWalletDetails = databaseWalletDetails
        self.databaseType = databaseType
        self.databaseConnectionType = databaseConnectionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SqlMonitorConfiguration: CustomStringConvertible {
    public var description: String { "SqlMonitorConfiguration()" }
}