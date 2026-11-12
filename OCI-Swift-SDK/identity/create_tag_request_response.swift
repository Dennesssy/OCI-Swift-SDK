import Foundation

// MARK: - CreateTagRequest

public struct CreateTagRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var isLockOverride: Bool?
    public var opcRequestId: String?
    public var createTagDetails: CreateTagDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, isLockOverride, opcRequestId, createTagDetails, opcRetryToken
    }

    public init(
                tagNamespaceId: String? = nil,
                isLockOverride: Bool? = nil,
                opcRequestId: String? = nil,
                createTagDetails: CreateTagDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.isLockOverride = isLockOverride
        self.opcRequestId = opcRequestId
        self.createTagDetails = createTagDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTagRequest: CustomStringConvertible {
    public var description: String { "CreateTagRequest()" }
}

// MARK: - CreateTagResponse

public struct CreateTagResponse: Codable, Sendable {
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

extension CreateTagResponse: CustomStringConvertible {
    public var description: String { "CreateTagResponse()" }
}