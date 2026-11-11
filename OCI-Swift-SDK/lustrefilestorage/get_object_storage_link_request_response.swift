import Foundation

// MARK: - GetObjectStorageLinkRequest

public struct GetObjectStorageLinkRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, opcRequestId
    }

    public init(
                objectStorageLinkId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectStorageLinkRequest: CustomStringConvertible {
    public var description: String { "GetObjectStorageLinkRequest()" }
}

// MARK: - GetObjectStorageLinkResponse

public struct GetObjectStorageLinkResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var objectStorageLink: ObjectStorageLink?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, objectStorageLink
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                objectStorageLink: ObjectStorageLink? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.objectStorageLink = objectStorageLink
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetObjectStorageLinkResponse: CustomStringConvertible {
    public var description: String { "GetObjectStorageLinkResponse()" }
}