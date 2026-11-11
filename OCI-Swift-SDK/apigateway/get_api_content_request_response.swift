import Foundation

// MARK: - GetApiContentRequest

public struct GetApiContentRequest: Codable, Sendable {
    public var apiId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var range: String?

    private enum CodingKeys: String, CodingKey {
        case apiId, opcRequestId, ifMatch, range
    }

    public init(
                apiId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                range: String? = nil
    ) {
        self.apiId = apiId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.range = range
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiContentRequest: CustomStringConvertible {
    public var description: String { "GetApiContentRequest()" }
}

// MARK: - GetApiContentResponse

public struct GetApiContentResponse: Codable, Sendable {
    public var content: Data?
    public var etag: String?
    public var opcRequestId: String?
    public var xContentSha256: String?

    private enum CodingKeys: String, CodingKey {
        case content, etag, opcRequestId, xContentSha256
    }

    public init(
                content: Data? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                xContentSha256: String? = nil
    ) {
        self.content = content
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.xContentSha256 = xContentSha256
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetApiContentResponse: CustomStringConvertible {
    public var description: String { "GetApiContentResponse()" }
}