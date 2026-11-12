import Foundation

// MARK: - RemoveTagDefaultLockRequest

public struct RemoveTagDefaultLockRequest: Codable, Sendable {
    public var tagDefaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var removeLockDetails: RemoveLockDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagDefaultId, ifMatch, opcRequestId, removeLockDetails, opcRetryToken
    }

    public init(
                tagDefaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                removeLockDetails: RemoveLockDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagDefaultId = tagDefaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.removeLockDetails = removeLockDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveTagDefaultLockRequest: CustomStringConvertible {
    public var description: String { "RemoveTagDefaultLockRequest()" }
}

// MARK: - RemoveTagDefaultLockResponse

public struct RemoveTagDefaultLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var tagDefault: TagDefault?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, tagDefault
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                tagDefault: TagDefault? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.tagDefault = tagDefault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveTagDefaultLockResponse: CustomStringConvertible {
    public var description: String { "RemoveTagDefaultLockResponse()" }
}