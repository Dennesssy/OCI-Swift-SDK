import Foundation

// MARK: - DataSourceCollection

public struct DataSourceCollection: Codable, Sendable {

    public var items: [DataSourceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DataSourceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DataSourceCollection: CustomStringConvertible {
    public var description: String { "DataSourceCollection()" }
}