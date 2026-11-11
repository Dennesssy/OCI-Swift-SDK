import Foundation

// MARK: - QueryDetails

public struct QueryDetails: Codable, Sendable {

    public var queryText: String?

    private enum CodingKeys: String, CodingKey {
        case queryText
    }

    public init(
                queryText: String? = nil
    ) {
        self.queryText = queryText
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDetails: CustomStringConvertible {
    public var description: String { "QueryDetails()" }
}