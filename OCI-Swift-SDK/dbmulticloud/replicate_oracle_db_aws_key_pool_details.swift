import Foundation

// MARK: - ReplicateOracleDbAwsKeyPoolDetails

public struct ReplicateOracleDbAwsKeyPoolDetails: Codable, Sendable {

    public var targetRegion: String?
    public var action: ReplicationActionsEnum

    private enum CodingKeys: String, CodingKey {
        case targetRegion, action
    }

    public init(
                targetRegion: String? = nil,
                action: ReplicationActionsEnum
    ) {
        self.targetRegion = targetRegion
        self.action = action
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicateOracleDbAwsKeyPoolDetails: CustomStringConvertible {
    public var description: String { "ReplicateOracleDbAwsKeyPoolDetails()" }
}