import Foundation

// MARK: - GenerateEnrichmentJobRequest

public struct GenerateEnrichmentJobRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var generateEnrichmentJobDetails: GenerateEnrichmentJobDetails?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, opcRequestId, ifMatch, generateEnrichmentJobDetails
    }

    public init(
                semanticStoreId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                generateEnrichmentJobDetails: GenerateEnrichmentJobDetails? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.generateEnrichmentJobDetails = generateEnrichmentJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateEnrichmentJobRequest: CustomStringConvertible {
    public var description: String { "GenerateEnrichmentJobRequest()" }
}

// MARK: - GenerateEnrichmentJobResponse

public struct GenerateEnrichmentJobResponse: Codable, Sendable {
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

extension GenerateEnrichmentJobResponse: CustomStringConvertible {
    public var description: String { "GenerateEnrichmentJobResponse()" }
}