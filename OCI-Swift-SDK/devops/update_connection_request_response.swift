import Foundation
import OCICommon

// MARK: - UpdateConnectionRequest

public struct UpdateConnectionRequest: Codable, Sendable {
    public var connectionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateConnectionDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case connectionId, ifMatch, opcRequestId, updateConnectionDetails
    }

    public init(
                connectionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateConnectionDetails: JSONValue? = nil
    ) {
        self.connectionId = connectionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateConnectionDetails = updateConnectionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateConnectionRequest: CustomStringConvertible {
    public var description: String { "UpdateConnectionRequest()" }
}

// MARK: - UpdateConnectionResponse

public struct UpdateConnectionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var location: String?
    public var connection: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, opcWorkRequestId, location, connection
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                location: String? = nil,
                connection: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.location = location
        self.connection = connection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateConnectionResponse: CustomStringConvertible {
    public var description: String { "UpdateConnectionResponse()" }
}