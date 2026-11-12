import Foundation

// MARK: - CascadeDeleteTagNamespaceRequest

public struct CascadeDeleteTagNamespaceRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, ifMatch, opcRequestId, isLockOverride, opcRetryToken
    }

    public init(
                tagNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CascadeDeleteTagNamespaceRequest: CustomStringConvertible {
    public var description: String { "CascadeDeleteTagNamespaceRequest()" }
}

// MARK: - CascadeDeleteTagNamespaceResponse

public struct CascadeDeleteTagNamespaceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CascadeDeleteTagNamespaceResponse: CustomStringConvertible {
    public var description: String { "CascadeDeleteTagNamespaceResponse()" }
}