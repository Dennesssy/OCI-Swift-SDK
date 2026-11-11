import Foundation

// MARK: - DeleteTagDefaultRequest

public struct DeleteTagDefaultRequest: Codable, Sendable {
    public var tagDefaultId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case tagDefaultId, opcRequestId, ifMatch, isLockOverride
    }

    public init(
                tagDefaultId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.tagDefaultId = tagDefaultId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTagDefaultRequest: CustomStringConvertible {
    public var description: String { "DeleteTagDefaultRequest()" }
}

// MARK: - DeleteTagDefaultResponse

public struct DeleteTagDefaultResponse: Codable, Sendable {
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

extension DeleteTagDefaultResponse: CustomStringConvertible {
    public var description: String { "DeleteTagDefaultResponse()" }
}