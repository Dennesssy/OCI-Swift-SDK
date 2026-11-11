import Foundation

// MARK: - CreateObjectStorageLinkRequest

public struct CreateObjectStorageLinkRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createObjectStorageLinkDetails: CreateObjectStorageLinkDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createObjectStorageLinkDetails
    }

    public init(
                opcRequestId: String? = nil,
                createObjectStorageLinkDetails: CreateObjectStorageLinkDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createObjectStorageLinkDetails = createObjectStorageLinkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateObjectStorageLinkRequest: CustomStringConvertible {
    public var description: String { "CreateObjectStorageLinkRequest()" }
}

// MARK: - CreateObjectStorageLinkResponse

public struct CreateObjectStorageLinkResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcRequestId: String?
    public var objectStorageLink: ObjectStorageLink?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcRequestId, objectStorageLink
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                objectStorageLink: ObjectStorageLink? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.objectStorageLink = objectStorageLink
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateObjectStorageLinkResponse: CustomStringConvertible {
    public var description: String { "CreateObjectStorageLinkResponse()" }
}