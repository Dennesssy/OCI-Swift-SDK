import Foundation

// MARK: - GetContainerImageSignatureRequest

public struct GetContainerImageSignatureRequest: Codable, Sendable {
    public var imageSignatureId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case imageSignatureId, opcRequestId
    }

    public init(
                imageSignatureId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.imageSignatureId = imageSignatureId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetContainerImageSignatureRequest: CustomStringConvertible {
    public var description: String { "GetContainerImageSignatureRequest()" }
}

// MARK: - GetContainerImageSignatureResponse

public struct GetContainerImageSignatureResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var containerImageSignature: ContainerImageSignature?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, containerImageSignature
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                containerImageSignature: ContainerImageSignature? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.containerImageSignature = containerImageSignature
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetContainerImageSignatureResponse: CustomStringConvertible {
    public var description: String { "GetContainerImageSignatureResponse()" }
}