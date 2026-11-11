import Foundation

// MARK: - UpdateDiagnosisStoreRequest

public struct UpdateDiagnosisStoreRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDiagnosisStoreDetails: UpdateDiagnosisStoreDetails?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, ifMatch, opcRequestId, updateDiagnosisStoreDetails
    }

    public init(
                diagnosisStoreId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDiagnosisStoreDetails: UpdateDiagnosisStoreDetails? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDiagnosisStoreDetails = updateDiagnosisStoreDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDiagnosisStoreRequest: CustomStringConvertible {
    public var description: String { "UpdateDiagnosisStoreRequest()" }
}

// MARK: - UpdateDiagnosisStoreResponse

public struct UpdateDiagnosisStoreResponse: Codable, Sendable {
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

extension UpdateDiagnosisStoreResponse: CustomStringConvertible {
    public var description: String { "UpdateDiagnosisStoreResponse()" }
}