import Foundation

// MARK: - RemoveContainerVersionRequest

public struct RemoveContainerVersionRequest: Codable, Sendable {
    public var imageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var removeContainerVersionDetails: RemoveContainerVersionDetails?

    private enum CodingKeys: String, CodingKey {
        case imageId, ifMatch, opcRequestId, removeContainerVersionDetails
    }

    public init(
                imageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                removeContainerVersionDetails: RemoveContainerVersionDetails? = nil
    ) {
        self.imageId = imageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.removeContainerVersionDetails = removeContainerVersionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveContainerVersionRequest: CustomStringConvertible {
    public var description: String { "RemoveContainerVersionRequest()" }
}

// MARK: - RemoveContainerVersionResponse

public struct RemoveContainerVersionResponse: Codable, Sendable {
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

extension RemoveContainerVersionResponse: CustomStringConvertible {
    public var description: String { "RemoveContainerVersionResponse()" }
}