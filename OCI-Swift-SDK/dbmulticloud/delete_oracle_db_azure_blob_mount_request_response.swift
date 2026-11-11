import Foundation

// MARK: - DeleteOracleDbAzureBlobMountRequest

public struct DeleteOracleDbAzureBlobMountRequest: Codable, Sendable {
    public var oracleDbAzureBlobMountId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobMountId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAzureBlobMountId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureBlobMountId = oracleDbAzureBlobMountId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureBlobMountRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureBlobMountRequest()" }
}

// MARK: - DeleteOracleDbAzureBlobMountResponse

public struct DeleteOracleDbAzureBlobMountResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureBlobMountResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureBlobMountResponse()" }
}