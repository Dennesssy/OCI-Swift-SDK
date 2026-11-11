import Foundation

// MARK: - GetTagRequest

public struct GetTagRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var tagName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, tagName, opcRequestId
    }

    public init(
                tagNamespaceId: String? = nil,
                tagName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.tagName = tagName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTagRequest: CustomStringConvertible {
    public var description: String { "GetTagRequest()" }
}

// MARK: - GetTagResponse

public struct GetTagResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var tag: Tag?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, tag
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                tag: Tag? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.tag = tag
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTagResponse: CustomStringConvertible {
    public var description: String { "GetTagResponse()" }
}