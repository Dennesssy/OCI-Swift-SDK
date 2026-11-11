import Foundation

// MARK: - GetDataIngestionJobRequest

public struct GetDataIngestionJobRequest: Codable, Sendable {
    public var dataIngestionJobId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dataIngestionJobId, opcRequestId
    }

    public init(
                dataIngestionJobId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dataIngestionJobId = dataIngestionJobId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDataIngestionJobRequest: CustomStringConvertible {
    public var description: String { "GetDataIngestionJobRequest()" }
}

// MARK: - GetDataIngestionJobResponse

public struct GetDataIngestionJobResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var dataIngestionJob: DataIngestionJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, dataIngestionJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                dataIngestionJob: DataIngestionJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.dataIngestionJob = dataIngestionJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDataIngestionJobResponse: CustomStringConvertible {
    public var description: String { "GetDataIngestionJobResponse()" }
}