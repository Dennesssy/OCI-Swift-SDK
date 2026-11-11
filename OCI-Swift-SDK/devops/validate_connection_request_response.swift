import Foundation
import OCICommon

// MARK: - ValidateConnectionRequest

public struct ValidateConnectionRequest: Codable, Sendable {
    public var connectionId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case connectionId, opcRequestId, ifMatch
    }

    public init(
                connectionId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.connectionId = connectionId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateConnectionRequest: CustomStringConvertible {
    public var description: String { "ValidateConnectionRequest()" }
}

// MARK: - ValidateConnectionResponse

public struct ValidateConnectionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var connection: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, connection
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                connection: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.connection = connection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateConnectionResponse: CustomStringConvertible {
    public var description: String { "ValidateConnectionResponse()" }
}