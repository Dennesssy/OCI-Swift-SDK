import Foundation

// MARK: - UpdateTagRequest

public struct UpdateTagRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var tagName: String?
    public var ifMatch: String?
    public var isLockOverride: Bool?
    public var opcRequestId: String?
    public var updateTagDetails: UpdateTagDetails?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, tagName, ifMatch, isLockOverride, opcRequestId, updateTagDetails
    }

    public init(
                tagNamespaceId: String? = nil,
                tagName: String? = nil,
                ifMatch: String? = nil,
                isLockOverride: Bool? = nil,
                opcRequestId: String? = nil,
                updateTagDetails: UpdateTagDetails? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.tagName = tagName
        self.ifMatch = ifMatch
        self.isLockOverride = isLockOverride
        self.opcRequestId = opcRequestId
        self.updateTagDetails = updateTagDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTagRequest: CustomStringConvertible {
    public var description: String { "UpdateTagRequest()" }
}

// MARK: - UpdateTagResponse

public struct UpdateTagResponse: Codable, Sendable {
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

extension UpdateTagResponse: CustomStringConvertible {
    public var description: String { "UpdateTagResponse()" }
}