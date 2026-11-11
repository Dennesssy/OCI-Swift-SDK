import Foundation

// MARK: - DomainReplicationStates

public struct DomainReplicationStates: Codable, Sendable {

    public var domainId: String?
    public var state: ReplicatedRegionDetailsStateEnum
    public var replicaRegion: String?

    private enum CodingKeys: String, CodingKey {
        case domainId, state, replicaRegion
    }

    public init(
                domainId: String? = nil,
                state: ReplicatedRegionDetailsStateEnum,
                replicaRegion: String? = nil
    ) {
        self.domainId = domainId
        self.state = state
        self.replicaRegion = replicaRegion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DomainReplicationStates: CustomStringConvertible {
    public var description: String { "DomainReplicationStates()" }
}