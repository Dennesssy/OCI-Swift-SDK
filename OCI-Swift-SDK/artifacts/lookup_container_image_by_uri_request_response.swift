import Foundation

// MARK: - LookupContainerImageByUriRequest

public struct LookupContainerImageByUriRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var lookupContainerImageByUriDetails: LookupContainerImageByUriDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, lookupContainerImageByUriDetails
    }

    public init(
                opcRequestId: String? = nil,
                lookupContainerImageByUriDetails: LookupContainerImageByUriDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.lookupContainerImageByUriDetails = lookupContainerImageByUriDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LookupContainerImageByUriRequest: CustomStringConvertible {
    public var description: String { "LookupContainerImageByUriRequest()" }
}

// MARK: - LookupContainerImageByUriResponse

public struct LookupContainerImageByUriResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var containerImage: ContainerImage?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, containerImage
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                containerImage: ContainerImage? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.containerImage = containerImage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LookupContainerImageByUriResponse: CustomStringConvertible {
    public var description: String { "LookupContainerImageByUriResponse()" }
}