import Foundation

// MARK: - DeleteTagRequest

public struct DeleteTagRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var tagName: String?
    public var ifMatch: String?
    public var isLockOverride: Bool?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, tagName, ifMatch, isLockOverride, opcRequestId
    }

    public init(
                tagNamespaceId: String? = nil,
                tagName: String? = nil,
                ifMatch: String? = nil,
                isLockOverride: Bool? = nil,
                opcRequestId: String? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.tagName = tagName
        self.ifMatch = ifMatch
        self.isLockOverride = isLockOverride
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTagRequest: CustomStringConvertible {
    public var description: String { "DeleteTagRequest()" }
}

// MARK: - DeleteTagResponse

public struct DeleteTagResponse: Codable, Sendable {
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

extension DeleteTagResponse: CustomStringConvertible {
    public var description: String { "DeleteTagResponse()" }
}