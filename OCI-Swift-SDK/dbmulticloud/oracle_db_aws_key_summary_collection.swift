import Foundation

// MARK: - OracleDbAwsKeySummaryCollection

public struct OracleDbAwsKeySummaryCollection: Codable, Sendable {

    public var items: [OracleDbAwsKeySummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAwsKeySummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAwsKeySummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAwsKeySummaryCollection()" }
}