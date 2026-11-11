import Foundation

// MARK: - OracleDbGcpIdentityConnectorSummaryCollection

public struct OracleDbGcpIdentityConnectorSummaryCollection: Codable, Sendable {

    public var items: [OracleDbGcpIdentityConnectorSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [OracleDbGcpIdentityConnectorSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleDbGcpIdentityConnectorSummaryCollection: CustomStringConvertible {
    public var description: String { "OracleDbGcpIdentityConnectorSummaryCollection()" }
}