import Foundation

// MARK: - OracleDbGcpKeyRingSummaryCollection

public struct OracleDbGcpKeyRingSummaryCollection: Codable, Sendable {

    public var items: [OracleDbGcpKeyRingSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbGcpKeyRingSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbGcpKeyRingSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbGcpKeyRingSummaryCollection()" }
}