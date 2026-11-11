import Foundation

// MARK: - AddTagNamespaceLockRequest

public struct AddTagNamespaceLockRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var addLockDetails: AddLockDetails?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, ifMatch, opcRequestId, addLockDetails
    }

    public init(
                tagNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                addLockDetails: AddLockDetails? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.addLockDetails = addLockDetails
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