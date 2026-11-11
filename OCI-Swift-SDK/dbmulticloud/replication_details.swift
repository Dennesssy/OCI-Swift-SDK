import Foundation

// MARK: - ReplicationDetails

public struct ReplicationDetails: Codable, Sendable {

    public var replicationState: ReplicationDetailsReplicationStateEnum?
    public var targetRegion: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case replicationState, targetRegion, timeCreated, timeUpdated
    }

    public init(
                replicationState: ReplicationDetailsReplicationStateEnum? = nil,
                targetRegion: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.replicationState = replicationState
        self.targetRegion = targetRegion
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicationDetails: CustomStringConvertible {
    public var description: String { "ReplicationDetails()" }
}