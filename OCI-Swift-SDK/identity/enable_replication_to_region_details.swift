import Foundation

// MARK: - EnableReplicationToRegionDetails

public struct EnableReplicationToRegionDetails: Codable, Sendable {

    public var replicaRegion: String?

    private enum CodingKeys: String, CodingKey {
        case replicaRegion
    }

    public init(
                replicaRegion: String? = nil
    ) {
        self.replicaRegion = replicaRegion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableReplicationToRegionDetails: CustomStringConvertible {
    public var description: String { "EnableReplicationToRegionDetails()" }
}