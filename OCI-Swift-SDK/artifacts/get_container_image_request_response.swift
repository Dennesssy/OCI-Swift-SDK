import Foundation

// MARK: - GetContainerImageRequest

public struct GetContainerImageRequest: Codable, Sendable {
    public var imageId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case imageId, opcRequestId
    }

    public init(
                imageId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.imageId = imageId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetContainerImageRequest: CustomStringConvertible {
    public var description: String { "GetContainerImageRequest()" }
}

// MARK: - GetContainerImageResponse

public struct GetContainerImageResponse: Codable, Sendable {
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

extension GetContainerImageResponse: CustomStringConvertible {
    public var description: String { "GetContainerImageResponse()" }
}