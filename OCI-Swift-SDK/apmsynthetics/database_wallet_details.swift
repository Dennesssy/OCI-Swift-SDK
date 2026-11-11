import Foundation

// MARK: - DatabaseWalletDetails

public struct DatabaseWalletDetails: Codable, Sendable {

    public var databaseWallet: String?
    public var serviceName: String?

    private enum CodingKeys: String, CodingKey {
        case databaseWallet, serviceName
    }

    public init(
                databaseWallet: String? = nil,
                serviceName: String? = nil
    ) {
        self.databaseWallet = databaseWallet
        self.serviceName = serviceName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseWalletDetails: CustomStringConvertible {
    public var description: String { "DatabaseWalletDetails()" }
}