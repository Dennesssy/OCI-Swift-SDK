import Foundation

// MARK: - OracleDbGcpKeySummaryCollection

public struct OracleDbGcpKeySummaryCollection: Codable, Sendable {

    public var items: [OracleDbGcpKeySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbGcpKeySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbGcpKeySummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbGcpKeySummaryCollection()" }
}