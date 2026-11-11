import Foundation

// MARK: - DeleteOracleDbAzureBlobContainerRequest

public struct DeleteOracleDbAzureBlobContainerRequest: Codable, Sendable {
    public var oracleDbAzureBlobContainerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobContainerId, ifMatch, opcRequestId
    }

    public init(
                oracleDbAzureBlobContainerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteOracleDbAzureBlobContainerRequest: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureBlobContainerRequest()" }
}

// MARK: - DeleteOracleDbAzureBlobContainerResponse

public struct DeleteOracleDbAzureBlobContainerResponse: Codable, Sendable {
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

extension DeleteOracleDbAzureBlobContainerResponse: CustomStringConvertible {
    public var description: String { "DeleteOracleDbAzureBlobContainerResponse()" }
}