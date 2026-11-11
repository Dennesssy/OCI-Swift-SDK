import Foundation

// MARK: - DeleteTagNamespaceRequest

public struct DeleteTagNamespaceRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                tagNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTagNamespaceRequest: CustomStringConvertible {
    public var description: String { "DeleteTagNamespaceRequest()" }
}

// MARK: - DeleteTagNamespaceResponse

public struct DeleteTagNamespaceResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTagNamespaceResponse: CustomStringConvertible {
    public var description: String { "DeleteTagNamespaceResponse()" }
}