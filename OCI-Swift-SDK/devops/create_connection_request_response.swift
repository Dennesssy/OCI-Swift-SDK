import Foundation
import OCICommon

// MARK: - CreateConnectionRequest

public struct CreateConnectionRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createConnectionDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createConnectionDetails
    }

    public init(
                opcRequestId: String? = nil,
                createConnectionDetails: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createConnectionDetails = createConnectionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateConnectionRequest: CustomStringConvertible {
    public var description: String { "CreateConnectionRequest()" }
}

// MARK: - CreateConnectionResponse

public struct CreateConnectionResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var connection: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, connection
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                connection: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.connection = connection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateConnectionResponse: CustomStringConvertible {
    public var description: String { "CreateConnectionResponse()" }
}