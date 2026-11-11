import Foundation

// MARK: - GetDataIngestionJobLogContentRequest

public struct GetDataIngestionJobLogContentRequest: Codable, Sendable {
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

extension GetDataIngestionJobLogContentRequest: CustomStringConvertible {
    public var description: String { "GetDataIngestionJobLogContentRequest()" }
}

// MARK: - GetDataIngestionJobLogContentResponse

public struct GetDataIngestionJobLogContentResponse: Codable, Sendable {
    public var content: Data?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, opcRequestId
    }

    public init(
                content: Data? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDataIngestionJobLogContentResponse: CustomStringConvertible {
    public var description: String { "GetDataIngestionJobLogContentResponse()" }
}