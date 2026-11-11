import Foundation

// MARK: - UpdateContainerImageRequest

public struct UpdateContainerImageRequest: Codable, Sendable {
    public var imageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateContainerImageDetails: UpdateContainerImageDetails?

    private enum CodingKeys: String, CodingKey {
        case imageId, ifMatch, opcRequestId, updateContainerImageDetails
    }

    public init(
                imageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateContainerImageDetails: UpdateContainerImageDetails? = nil
    ) {
        self.imageId = imageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateContainerImageDetails = updateContainerImageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerImageRequest: CustomStringConvertible {
    public var description: String { "UpdateContainerImageRequest()" }
}

// MARK: - UpdateContainerImageResponse

public struct UpdateContainerImageResponse: Codable, Sendable {
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

extension UpdateContainerImageResponse: CustomStringConvertible {
    public var description: String { "UpdateContainerImageResponse()" }
}