import Foundation

// MARK: - ChangeOracleDbAzureBlobMountCompartmentRequest

public struct ChangeOracleDbAzureBlobMountCompartmentRequest: Codable, Sendable {
    public var oracleDbAzureBlobMountId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeOracleDbAzureBlobMountCompartmentDetails: ChangeOracleDbAzureBlobMountCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case oracleDbAzureBlobMountId, ifMatch, opcRequestId, changeOracleDbAzureBlobMountCompartmentDetails
    }

    public init(
                oracleDbAzureBlobMountId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeOracleDbAzureBlobMountCompartmentDetails: ChangeOracleDbAzureBlobMountCompartmentDetails? = nil
    ) {
        self.oracleDbAzureBlobMountId = oracleDbAzureBlobMountId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeOracleDbAzureBlobMountCompartmentDetails = changeOracleDbAzureBlobMountCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeOracleDbAzureBlobMountCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureBlobMountCompartmentRequest()" }
}

// MARK: - ChangeOracleDbAzureBlobMountCompartmentResponse

public struct ChangeOracleDbAzureBlobMountCompartmentResponse: Codable, Sendable {
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

extension ChangeOracleDbAzureBlobMountCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeOracleDbAzureBlobMountCompartmentResponse()" }
}