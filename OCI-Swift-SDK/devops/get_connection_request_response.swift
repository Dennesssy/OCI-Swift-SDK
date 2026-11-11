import Foundation
import OCICommon

// MARK: - GetConnectionRequest

public struct GetConnectionRequest: Codable, Sendable {
    public var connectionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case connectionId, opcRequestId
    }

    public init(
                connectionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.connectionId = connectionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetConnectionRequest: CustomStringConvertible {
    public var description: String { "GetConnectionRequest()" }
}

// MARK: - GetConnectionResponse

public struct GetConnectionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var connection: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, connection
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                connection: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.connection = connection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetConnectionResponse: CustomStringConvertible {
    public var description: String { "GetConnectionResponse()" }
}