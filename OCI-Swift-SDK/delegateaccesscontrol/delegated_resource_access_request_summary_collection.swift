import Foundation

// MARK: - DelegatedResourceAccessRequestSummaryCollection

public struct DelegatedResourceAccessRequestSummaryCollection: Codable, Sendable {

    public var items: [DelegatedResourceAccessRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DelegatedResourceAccessRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestSummaryCollection: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestSummaryCollection()" }
}