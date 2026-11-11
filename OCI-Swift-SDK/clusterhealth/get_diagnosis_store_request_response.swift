import Foundation

// MARK: - GetDiagnosisStoreRequest

public struct GetDiagnosisStoreRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, opcRequestId
    }

    public init(
                diagnosisStoreId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDiagnosisStoreRequest: CustomStringConvertible {
    public var description: String { "GetDiagnosisStoreRequest()" }
}

// MARK: - GetDiagnosisStoreResponse

public struct GetDiagnosisStoreResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var diagnosisStore: DiagnosisStore?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, diagnosisStore
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                diagnosisStore: DiagnosisStore? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.diagnosisStore = diagnosisStore
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDiagnosisStoreResponse: CustomStringConvertible {
    public var description: String { "GetDiagnosisStoreResponse()" }
}