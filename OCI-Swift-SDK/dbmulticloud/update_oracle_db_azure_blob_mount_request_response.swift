import Foundation

// MARK: - UpdateOracleDbAzureBlobMountRequest

public struct UpdateOracleDbAzureBlobMountRequest: Codable, Sendable {
    public var oracleDbAzureBlobMountId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAzureBlobMountDetails: UpdateOracleDbAzureBlobMountDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobMountId, ifMatch, opcRequestId, updateOracleDbAzureBlobMountDetails
    }

    public init(
                oracleDbAzureBlobMountId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAzureBlobMountDetails: UpdateOracleDbAzureBlobMountDetails? = nil
    ) {
        self.oracleDbAzureBlobMountId = oracleDbAzureBlobMountId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAzureBlobMountDetails = updateOracleDbAzureBlobMountDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureBlobMountRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobMountRequest()" }
}

// MARK: - UpdateOracleDbAzureBlobMountResponse

public struct UpdateOracleDbAzureBlobMountResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureBlobMountResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobMountResponse()" }
}