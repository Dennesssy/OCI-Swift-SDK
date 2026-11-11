import Foundation

// MARK: - DelegatedResourceAccessRequestHistoryCollection

public struct DelegatedResourceAccessRequestHistoryCollection: Codable, Sendable {

    public var items: [DelegatedResourceAccessRequestHistorySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DelegatedResourceAccessRequestHistorySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestHistoryCollection: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestHistoryCollection()" }
}