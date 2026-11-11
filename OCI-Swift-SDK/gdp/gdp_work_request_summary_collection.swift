import Foundation

// MARK: - GdpWorkRequestSummaryCollection

public struct GdpWorkRequestSummaryCollection: Codable, Sendable {

    public var items: [GdpWorkRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [GdpWorkRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GdpWorkRequestSummaryCollection: CustomStringConvertible {
    public var description: String { "GdpWorkRequestSummaryCollection()" }
}