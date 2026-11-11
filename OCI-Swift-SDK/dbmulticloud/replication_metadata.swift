import Foundation

// MARK: - ReplicationMetadata

public struct ReplicationMetadata: Codable, Sendable {

    public var replicationDetails: [ReplicationDetails]?

    private enum CodingKeys: String, CodingKey {
        case replicationDetails
    }

    public init(
                replicationDetails: [ReplicationDetails]? = nil
    ) {
        self.replicationDetails = replicationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicationMetadata: CustomStringConvertible {
    public var description: String { "ReplicationMetadata()" }
}