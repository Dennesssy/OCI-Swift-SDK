import Foundation

// MARK: - UpdateTagNamespaceRequest

public struct UpdateTagNamespaceRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var isLockOverride: Bool?
    public var opcRequestId: String?
    public var updateTagNamespaceDetails: UpdateTagNamespaceDetails?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, isLockOverride, opcRequestId, updateTagNamespaceDetails
    }

    public init(
                tagNamespaceId: String? = nil,
                isLockOverride: Bool? = nil,
                opcRequestId: String? = nil,
                updateTagNamespaceDetails: UpdateTagNamespaceDetails? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.isLockOverride = isLockOverride
        self.opcRequestId = opcRequestId
        self.updateTagNamespaceDetails = updateTagNamespaceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTagNamespaceRequest: CustomStringConvertible {
    public var description: String { "UpdateTagNamespaceRequest()" }
}

// MARK: - UpdateTagNamespaceResponse

public struct UpdateTagNamespaceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var tagNamespace: TagNamespace?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, tagNamespace
    }

    public init(
                opcRequestId: String? = nil,
                tagNamespace: TagNamespace? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.tagNamespace = tagNamespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTagNamespaceResponse: CustomStringConvertible {
    public var description: String { "UpdateTagNamespaceResponse()" }
}