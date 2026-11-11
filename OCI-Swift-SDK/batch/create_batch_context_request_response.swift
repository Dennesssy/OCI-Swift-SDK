import Foundation

// MARK: - CreateBatchContextRequest

public struct CreateBatchContextRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBatchContextDetails: CreateBatchContextDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBatchContextDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBatchContextDetails: CreateBatchContextDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBatchContextDetails = createBatchContextDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchContextRequest: CustomStringConvertible {
    public var description: String { "CreateBatchContextRequest()" }
}

// MARK: - CreateBatchContextResponse

public struct CreateBatchContextResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var batchContext: BatchContext?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, batchContext
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                batchContext: BatchContext? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.batchContext = batchContext
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchContextResponse: CustomStringConvertible {
    public var description: String { "CreateBatchContextResponse()" }
}