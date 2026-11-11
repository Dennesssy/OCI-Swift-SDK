import Foundation

// MARK: - RequestDiagnosisRequest

public struct RequestDiagnosisRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var opcRequestId: String?
    public var requestDiagnosisDetails: RequestDiagnosisDetails?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, opcRequestId, requestDiagnosisDetails
    }

    public init(
                diagnosisStoreId: String? = nil,
                opcRequestId: String? = nil,
                requestDiagnosisDetails: RequestDiagnosisDetails? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.opcRequestId = opcRequestId
        self.requestDiagnosisDetails = requestDiagnosisDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestDiagnosisRequest: CustomStringConvertible {
    public var description: String { "RequestDiagnosisRequest()" }
}

// MARK: - RequestDiagnosisResponse

public struct RequestDiagnosisResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var diagnosisResults: DiagnosisResults?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, diagnosisResults
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                diagnosisResults: DiagnosisResults? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.diagnosisResults = diagnosisResults
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestDiagnosisResponse: CustomStringConvertible {
    public var description: String { "RequestDiagnosisResponse()" }
}