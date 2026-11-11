import Foundation

// MARK: - CreateDataIngestionJobRequest

public struct CreateDataIngestionJobRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDataIngestionJobDetails: CreateDataIngestionJobDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDataIngestionJobDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDataIngestionJobDetails: CreateDataIngestionJobDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDataIngestionJobDetails = createDataIngestionJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDataIngestionJobRequest: CustomStringConvertible {
    public var description: String { "CreateDataIngestionJobRequest()" }
}

// MARK: - CreateDataIngestionJobResponse

public struct CreateDataIngestionJobResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var dataIngestionJob: DataIngestionJob?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, dataIngestionJob
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                dataIngestionJob: DataIngestionJob? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.dataIngestionJob = dataIngestionJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDataIngestionJobResponse: CustomStringConvertible {
    public var description: String { "CreateDataIngestionJobResponse()" }
}