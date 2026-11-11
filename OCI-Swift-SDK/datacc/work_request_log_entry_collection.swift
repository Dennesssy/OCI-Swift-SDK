import Foundation

// MARK: - WorkRequestLogEntryCollection

public struct WorkRequestLogEntryCollection: Codable, Sendable {

    public var items: [WorkRequestLogEntry]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkRequestLogEntry]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestLogEntryCollection: CustomStringConvertible {
    public var description: String { "WorkRequestLogEntryCollection()" }
}