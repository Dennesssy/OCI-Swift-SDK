import Foundation

// MARK: - GetApiRequest

public struct GetApiRequest: Codable, Sendable {
    public var apiId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apiId, opcRequestId
    }

    public init(
                apiId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apiId = apiId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiRequest: CustomStringConvertible {
    public var description: String { "GetApiRequest()" }
}

// MARK: - GetApiResponse

public struct GetApiResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var api: Api?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, api
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                api: Api? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.api = api
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiResponse: CustomStringConvertible {
    public var description: String { "GetApiResponse()" }
}