import Foundation

// MARK: - GetTagDefaultRequest

public struct GetTagDefaultRequest: Codable, Sendable {
    public var tagDefaultId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tagDefaultId, opcRequestId
    }

    public init(
                tagDefaultId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tagDefaultId = tagDefaultId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTagDefaultRequest: CustomStringConvertible {
    public var description: String { "GetTagDefaultRequest()" }
}

// MARK: - GetTagDefaultResponse

public struct GetTagDefaultResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var tagDefault: TagDefault?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, tagDefault
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                tagDefault: TagDefault? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.tagDefault = tagDefault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTagDefaultResponse: CustomStringConvertible {
    public var description: String { "GetTagDefaultResponse()" }
}