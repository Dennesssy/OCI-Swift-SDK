import Foundation

// MARK: - GetEnrichmentJobRequest

public struct GetEnrichmentJobRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var enrichmentJobId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, enrichmentJobId, opcRequestId
    }

    public init(
                semanticStoreId: String? = nil,
                enrichmentJobId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.enrichmentJobId = enrichmentJobId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetEnrichmentJobRequest: CustomStringConvertible {
    public var description: String { "GetEnrichmentJobRequest()" }
}

// MARK: - GetEnrichmentJobResponse

public struct GetEnrichmentJobResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var enrichmentJob: EnrichmentJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, enrichmentJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                enrichmentJob: EnrichmentJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.enrichmentJob = enrichmentJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetEnrichmentJobResponse: CustomStringConvertible {
    public var description: String { "GetEnrichmentJobResponse()" }
}