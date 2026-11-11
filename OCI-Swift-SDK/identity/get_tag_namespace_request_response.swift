import Foundation

// MARK: - GetTagNamespaceRequest

public struct GetTagNamespaceRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, opcRequestId
    }

    public init(
                tagNamespaceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTagNamespaceRequest: CustomStringConvertible {
    public var description: String { "GetTagNamespaceRequest()" }
}

// MARK: - GetTagNamespaceResponse

public struct GetTagNamespaceResponse: Codable, Sendable {
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

extension GetTagNamespaceResponse: CustomStringConvertible {
    public var description: String { "GetTagNamespaceResponse()" }
}