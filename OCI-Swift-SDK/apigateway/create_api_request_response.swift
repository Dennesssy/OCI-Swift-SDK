import Foundation

// MARK: - CreateApiRequest

public struct CreateApiRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createApiDetails: CreateApiDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createApiDetails
    }

    public init(
                opcRequestId: String? = nil,
                createApiDetails: CreateApiDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createApiDetails = createApiDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateApiRequest: CustomStringConvertible {
    public var description: String { "CreateApiRequest()" }
}

// MARK: - CreateApiResponse

public struct CreateApiResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var api: Api?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, api
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                api: Api? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.api = api
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateApiResponse: CustomStringConvertible {
    public var description: String { "CreateApiResponse()" }
}