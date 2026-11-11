import Foundation

// MARK: - QueryDiagnosisByHealthCheckKeyRequest

public struct QueryDiagnosisByHealthCheckKeyRequest: Codable, Sendable {
    public var diagnosisStoreId: String?
    public var opcRequestId: String?
    public var queryDiagnosisByHealthCheckKeyDetails: QueryDiagnosisByHealthCheckKeyDetails?

    private enum CodingKeys: String, CodingKey {
        case diagnosisStoreId, opcRequestId, queryDiagnosisByHealthCheckKeyDetails
    }

    public init(
                diagnosisStoreId: String? = nil,
                opcRequestId: String? = nil,
                queryDiagnosisByHealthCheckKeyDetails: QueryDiagnosisByHealthCheckKeyDetails? = nil
    ) {
        self.diagnosisStoreId = diagnosisStoreId
        self.opcRequestId = opcRequestId
        self.queryDiagnosisByHealthCheckKeyDetails = queryDiagnosisByHealthCheckKeyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisByHealthCheckKeyRequest: CustomStringConvertible {
    public var description: String { "QueryDiagnosisByHealthCheckKeyRequest()" }
}

// MARK: - QueryDiagnosisByHealthCheckKeyResponse

public struct QueryDiagnosisByHealthCheckKeyResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var recommendationReport: RecommendationReport?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, recommendationReport
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                recommendationReport: RecommendationReport? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.recommendationReport = recommendationReport
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisByHealthCheckKeyResponse: CustomStringConvertible {
    public var description: String { "QueryDiagnosisByHealthCheckKeyResponse()" }
}