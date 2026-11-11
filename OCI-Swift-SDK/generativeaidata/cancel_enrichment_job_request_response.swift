import Foundation

// MARK: - CancelEnrichmentJobRequest

public struct CancelEnrichmentJobRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var enrichmentJobId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, enrichmentJobId, opcRequestId, ifMatch
    }

    public init(
                semanticStoreId: String? = nil,
                enrichmentJobId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.enrichmentJobId = enrichmentJobId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelEnrichmentJobRequest: CustomStringConvertible {
    public var description: String { "CancelEnrichmentJobRequest()" }
}

// MARK: - CancelEnrichmentJobResponse

public struct CancelEnrichmentJobResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var enrichmentJob: EnrichmentJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, opcWorkRequestId, enrichmentJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                enrichmentJob: EnrichmentJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.enrichmentJob = enrichmentJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelEnrichmentJobResponse: CustomStringConvertible {
    public var description: String { "CancelEnrichmentJobResponse()" }
}