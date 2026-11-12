import Foundation

// MARK: - AddTagDefaultLockRequest

public struct AddTagDefaultLockRequest: Codable, Sendable {
    public var tagDefaultId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var addLockDetails: AddLockDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tagDefaultId, ifMatch, opcRequestId, addLockDetails, opcRetryToken
    }

    public init(
                tagDefaultId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                addLockDetails: AddLockDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tagDefaultId = tagDefaultId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.addLockDetails = addLockDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddTagDefaultLockRequest: CustomStringConvertible {
    public var description: String { "AddTagDefaultLockRequest()" }
}

// MARK: - AddTagDefaultLockResponse

public struct AddTagDefaultLockResponse: Codable, Sendable {
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

extension AddTagDefaultLockResponse: CustomStringConvertible {
    public var description: String { "AddTagDefaultLockResponse()" }
}