import Foundation

// MARK: - WorkItemCollection

public struct WorkItemCollection: Codable, Sendable {

    public var items: [WorkItemSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WorkItemSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkItemCollection: CustomStringConvertible {
    public var description: String { "WorkItemCollection()" }
}