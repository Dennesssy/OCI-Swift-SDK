import Foundation

// MARK: - ScanResultCollection

public struct ScanResultCollection: Codable, Sendable {

    public var items: [ScanResultSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ScanResultSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScanResultCollection: CustomStringConvertible {
    public var description: String { "ScanResultCollection()" }
}