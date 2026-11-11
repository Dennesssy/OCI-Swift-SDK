import Foundation

// MARK: - RefreshOracleDbAwsKeyDetails

public struct RefreshOracleDbAwsKeyDetails: Codable, Sendable {

    public var oracleDbAwsConnectorId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAwsConnectorId
    }

    public init(
                oracleDbAwsConnectorId: String? = nil
    ) {
        self.oracleDbAwsConnectorId = oracleDbAwsConnectorId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RefreshOracleDbAwsKeyDetails: CustomStringConvertible {
    public var description: String { "RefreshOracleDbAwsKeyDetails()" }
}