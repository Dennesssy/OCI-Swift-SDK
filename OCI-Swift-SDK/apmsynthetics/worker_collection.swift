import Foundation

// MARK: - WorkerCollection

public struct WorkerCollection: Codable, Sendable {

    public var items: [WorkerSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkerSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkerCollection: CustomStringConvertible {
    public var description: String { "WorkerCollection()" }
}