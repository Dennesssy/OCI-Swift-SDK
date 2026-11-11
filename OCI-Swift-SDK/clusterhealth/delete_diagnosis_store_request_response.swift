import Foundation

// MARK: - DeleteDiagnosisStoreRequest

public struct DeleteDiagnosisStoreRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, ifMatch, opcRequestId
    }

    public init(
                diagnosisStoreId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDiagnosisStoreRequest: CustomStringConvertible {
    public var description: String { "DeleteDiagnosisStoreRequest()" }
}

// MARK: - DeleteDiagnosisStoreResponse

public struct DeleteDiagnosisStoreResponse: Codable, Sendable {
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

extension DeleteDiagnosisStoreResponse: CustomStringConvertible {
    public var description: String { "DeleteDiagnosisStoreResponse()" }
}