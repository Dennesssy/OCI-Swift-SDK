import Foundation

// MARK: - ChangeOracleDbAzureBlobContainerCompartmentRequest

public struct ChangeOracleDbAzureBlobContainerCompartmentRequest: Codable, Sendable {
    public var oracleDbAzureBlobContainerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAzureBlobContainerCompartmentDetails: ChangeOracleDbAzureBlobContainerCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobContainerId, ifMatch, opcRequestId, changeOracleDbAzureBlobContainerCompartmentDetails
    }

    public init(
                oracleDbAzureBlobContainerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAzureBlobContainerCompartmentDetails: ChangeOracleDbAzureBlobContainerCompartmentDetails? = nil
    ) {
        self.oracleDbAzureBlobContainerId = oracleDbAzureBlobContainerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAzureBlobContainerCompartmentDetails = changeOracleDbAzureBlobContainerCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureBlobContainerCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureBlobContainerCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAzureBlobContainerCompartmentResponse

public struct ChangeOracleDbAzureBlobContainerCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAzureBlobContainerCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureBlobContainerCompartmentResponse()" }
}