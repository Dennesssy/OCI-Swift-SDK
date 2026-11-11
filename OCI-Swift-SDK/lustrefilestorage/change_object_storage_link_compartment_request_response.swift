import Foundation

// MARK: - ChangeObjectStorageLinkCompartmentRequest

public struct ChangeObjectStorageLinkCompartmentRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeObjectStorageLinkCompartmentDetails: ChangeObjectStorageLinkCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, ifMatch, opcRequestId, changeObjectStorageLinkCompartmentDetails
    }

    public init(
                objectStorageLinkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeObjectStorageLinkCompartmentDetails: ChangeObjectStorageLinkCompartmentDetails? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeObjectStorageLinkCompartmentDetails = changeObjectStorageLinkCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeObjectStorageLinkCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeObjectStorageLinkCompartmentRequest()" }
}

// MARK: - ChangeObjectStorageLinkCompartmentResponse

public struct ChangeObjectStorageLinkCompartmentResponse: Codable, Sendable {
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

extension ChangeObjectStorageLinkCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeObjectStorageLinkCompartmentResponse()" }
}