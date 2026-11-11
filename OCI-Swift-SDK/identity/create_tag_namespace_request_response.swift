import Foundation

// MARK: - CreateTagNamespaceRequest

public struct CreateTagNamespaceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createTagNamespaceDetails: CreateTagNamespaceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createTagNamespaceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createTagNamespaceDetails: CreateTagNamespaceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createTagNamespaceDetails = createTagNamespaceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTagNamespaceRequest: CustomStringConvertible {
    public var description: String { "CreateTagNamespaceRequest()" }
}

// MARK: - CreateTagNamespaceResponse

public struct CreateTagNamespaceResponse: Codable, Sendable {
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

extension CreateTagNamespaceResponse: CustomStringConvertible {
    public var description: String { "CreateTagNamespaceResponse()" }
}