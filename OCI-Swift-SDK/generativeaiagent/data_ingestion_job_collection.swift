import Foundation

// MARK: - DataIngestionJobCollection

public struct DataIngestionJobCollection: Codable, Sendable {

    public var items: [DataIngestionJobSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DataIngestionJobSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DataIngestionJobCollection: CustomStringConvertible {
    public var description: String { "DataIngestionJobCollection()" }
}