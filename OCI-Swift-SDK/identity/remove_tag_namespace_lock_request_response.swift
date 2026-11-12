import Foundation

// MARK: - RemoveTagNamespaceLockRequest

public struct RemoveTagNamespaceLockRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var removeLockDetails: RemoveLockDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, ifMatch, opcRequestId, removeLockDetails, opcRetryToken
    }

    public init(
                tagNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                removeLockDetails: RemoveLockDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.removeLockDetails = removeLockDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveTagNamespaceLockRequest: CustomStringConvertible {
    public var description: String { "RemoveTagNamespaceLockRequest()" }
}

// MARK: - RemoveTagNamespaceLockResponse

public struct RemoveTagNamespaceLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var tagNamespace: TagNamespace?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, tagNamespace
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                tagNamespace: TagNamespace? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.tagNamespace = tagNamespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveTagNamespaceLockResponse: CustomStringConvertible {
    public var description: String { "RemoveTagNamespaceLockResponse()" }
}