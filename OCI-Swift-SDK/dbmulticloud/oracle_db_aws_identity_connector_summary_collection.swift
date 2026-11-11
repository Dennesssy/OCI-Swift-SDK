import Foundation

// MARK: - OracleDbAwsIdentityConnectorSummaryCollection

public struct OracleDbAwsIdentityConnectorSummaryCollection: Codable, Sendable {

    public var items: [OracleDbAwsIdentityConnectorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbAwsIdentityConnectorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbAwsIdentityConnectorSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbAwsIdentityConnectorSummaryCollection()" }
}