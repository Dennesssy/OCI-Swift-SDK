import Foundation

// MARK: - WorkRequestSummaryCollection

public struct WorkRequestSummaryCollection: Codable, Sendable {

    public var items: [WorkRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestSummaryCollection: CustomStringConvertible {
    public var description: String { "WorkRequestSummaryCollection()" }
}