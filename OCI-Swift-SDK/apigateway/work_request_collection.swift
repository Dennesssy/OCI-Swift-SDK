import Foundation

// MARK: - WorkRequestCollection

public struct WorkRequestCollection: Codable, Sendable {

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

extension WorkRequestCollection: CustomStringConvertible {
    public var description: String { "WorkRequestCollection()" }
}