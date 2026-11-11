import Foundation

// MARK: - ReplicateOracleDbAzureVaultDetails

public struct ReplicateOracleDbAzureVaultDetails: Codable, Sendable {

    public var targetRegion: String?
    public var action: ReplicationActionsEnum?

    private enum CodingKeys: String, CodingKey {
        case targetRegion, action
    }

    public init(
                targetRegion: String? = nil,
                action: ReplicationActionsEnum? = nil
    ) {
        self.targetRegion = targetRegion
        self.action = action
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbAzureVaultDetails: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAzureVaultDetails()" }
}