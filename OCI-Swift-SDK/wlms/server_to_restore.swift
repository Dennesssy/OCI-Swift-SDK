import Foundation

// MARK: - ServerToRestore

public struct ServerToRestore: Codable, Sendable {

    public var serverId: String?
    public var backups: [BackupToRestore]?

    private enum CodingKeys: String, CodingKey {
        case serverId, backups
    }

    public init(
                serverId: String? = nil,
                backups: [BackupToRestore]? = nil
    ) {
        self.serverId = serverId
        self.backups = backups
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServerToRestore: CustomStringConvertible {
    public var description: String { "ServerToRestore()" }
}