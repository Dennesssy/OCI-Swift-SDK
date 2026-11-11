import Foundation

// MARK: - BackupCollection

public struct BackupCollection: Codable, Sendable {

    public var items: [BackupSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BackupSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BackupCollection: CustomStringConvertible {
    public var description: String { "BackupCollection()" }
}