import Foundation

// MARK: - RestoreContainerImageRequest

public struct RestoreContainerImageRequest: Codable, Sendable {
    public var imageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var restoreContainerImageDetails: RestoreContainerImageDetails?

    private enum CodingKeys: String, CodingKey {
        case imageId, ifMatch, opcRequestId, restoreContainerImageDetails
    }

    public init(
                imageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                restoreContainerImageDetails: RestoreContainerImageDetails? = nil
    ) {
        self.imageId = imageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.restoreContainerImageDetails = restoreContainerImageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestoreContainerImageRequest: CustomStringConvertible {
    public var description: String { "RestoreContainerImageRequest()" }
}

// MARK: - RestoreContainerImageResponse

public struct RestoreContainerImageResponse: Codable, Sendable {
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

extension RestoreContainerImageResponse: CustomStringConvertible {
    public var description: String { "RestoreContainerImageResponse()" }
}