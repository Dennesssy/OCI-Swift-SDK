import Foundation

// MARK: - UpdateObjectStorageLinkRequest

public struct UpdateObjectStorageLinkRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateObjectStorageLinkDetails: UpdateObjectStorageLinkDetails?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, ifMatch, opcRequestId, updateObjectStorageLinkDetails
    }

    public init(
                objectStorageLinkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateObjectStorageLinkDetails: UpdateObjectStorageLinkDetails? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateObjectStorageLinkDetails = updateObjectStorageLinkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateObjectStorageLinkRequest: CustomStringConvertible {
    public var description: String { "UpdateObjectStorageLinkRequest()" }
}

// MARK: - UpdateObjectStorageLinkResponse

public struct UpdateObjectStorageLinkResponse: Codable, Sendable {
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

extension UpdateObjectStorageLinkResponse: CustomStringConvertible {
    public var description: String { "UpdateObjectStorageLinkResponse()" }
}