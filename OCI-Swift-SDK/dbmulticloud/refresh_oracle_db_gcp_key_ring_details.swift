import Foundation

// MARK: - RefreshOracleDbGcpKeyRingDetails

public struct RefreshOracleDbGcpKeyRingDetails: Codable, Sendable {

    public var oracleDbGcpConnectorId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbGcpConnectorId
    }

    public init(
                oracleDbGcpConnectorId: String? = nil
    ) {
        self.oracleDbGcpConnectorId = oracleDbGcpConnectorId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbGcpKeyRingDetails: CustomStringConvertible {
    public var description: String { "RefreshOracleDbGcpKeyRingDetails()" }
}