import Foundation

// MARK: - DeleteDataIngestionJobRequest

public struct DeleteDataIngestionJobRequest: Codable, Sendable {
    public var dataIngestionJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dataIngestionJobId, ifMatch, opcRequestId
    }

    public init(
                dataIngestionJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dataIngestionJobId = dataIngestionJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDataIngestionJobRequest: CustomStringConvertible {
    public var description: String { "DeleteDataIngestionJobRequest()" }
}

// MARK: - DeleteDataIngestionJobResponse

public struct DeleteDataIngestionJobResponse: Codable, Sendable {
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

extension DeleteDataIngestionJobResponse: CustomStringConvertible {
    public var description: String { "DeleteDataIngestionJobResponse()" }
}