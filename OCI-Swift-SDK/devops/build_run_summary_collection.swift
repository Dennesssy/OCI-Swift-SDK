import Foundation

// MARK: - BuildRunSummaryCollection

public struct BuildRunSummaryCollection: Codable, Sendable {

    public var items: [BuildRunSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildRunSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunSummaryCollection: CustomStringConvertible {
    public var description: String { "BuildRunSummaryCollection()" }
}