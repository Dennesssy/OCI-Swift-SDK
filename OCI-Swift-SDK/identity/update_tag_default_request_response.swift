import Foundation

// MARK: - UpdateTagDefaultRequest

public struct UpdateTagDefaultRequest: Codable, Sendable {
    public var tagDefaultId: String?
    public var isLockOverride: Bool?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateTagDefaultDetails: UpdateTagDefaultDetails?

    private enum CodingKeys: String, CodingKey {
        case tagDefaultId, isLockOverride, ifMatch, opcRequestId, updateTagDefaultDetails
    }

    public init(
                tagDefaultId: String? = nil,
                isLockOverride: Bool? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateTagDefaultDetails: UpdateTagDefaultDetails? = nil
    ) {
        self.tagDefaultId = tagDefaultId
        self.isLockOverride = isLockOverride
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateTagDefaultDetails = updateTagDefaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTagDefaultRequest: CustomStringConvertible {
    public var description: String { "UpdateTagDefaultRequest()" }
}

// MARK: - UpdateTagDefaultResponse

public struct UpdateTagDefaultResponse: Codable, Sendable {
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

extension UpdateTagDefaultResponse: CustomStringConvertible {
    public var description: String { "UpdateTagDefaultResponse()" }
}