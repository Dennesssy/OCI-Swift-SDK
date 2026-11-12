import Foundation

// MARK: - AddTagNamespaceLockRequest

public struct AddTagNamespaceLockRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var addLockDetails: AddLockDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, ifMatch, opcRequestId, addLockDetails, opcRetryToken
    }

    public init(
                tagNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                addLockDetails: AddLockDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.addLockDetails = addLockDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddTagNamespaceLockRequest: CustomStringConvertible {
    public var description: String { "AddTagNamespaceLockRequest()" }
}

// MARK: - AddTagNamespaceLockResponse

public struct AddTagNamespaceLockResponse: Codable, Sendable {
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

extension AddTagNamespaceLockResponse: CustomStringConvertible {
    public var description: String { "AddTagNamespaceLockResponse()" }
}