import Foundation

// MARK: - UpdateOracleDbAzureBlobContainerRequest

public struct UpdateOracleDbAzureBlobContainerRequest: Codable, Sendable {
    public var oracleDbAzureBlobContainerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateOracleDbAzureBlobContainerDetails: UpdateOracleDbAzureBlobContainerDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobContainerId, ifMatch, opcRequestId, updateOracleDbAzureBlobContainerDetails
    }

    public init(
                oracleDbAzureBlobContainerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateOracleDbAzureBlobContainerDetails: UpdateOracleDbAzureBlobContainerDetails? = nil
    ) {
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateOracleDbAzureBlobContainerDetails = updateOracleDbAzureBlobContainerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateOracleDbAzureBlobContainerRequest: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobContainerRequest()" }
}

// MARK: - UpdateOracleDbAzureBlobContainerResponse

public struct UpdateOracleDbAzureBlobContainerResponse: Codable, Sendable {
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

extension UpdateOracleDbAzureBlobContainerResponse: CustomStringConvertible {
    public var description: String { "UpdateOracleDbAzureBlobContainerResponse()" }
}