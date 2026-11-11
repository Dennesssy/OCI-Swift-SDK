import Foundation

// MARK: - UpdateContainerImageSignatureRequest

public struct UpdateContainerImageSignatureRequest: Codable, Sendable {
    public var imageSignatureId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateContainerImageSignatureDetails: UpdateContainerImageSignatureDetails?

    private enum CodingKeys: String, CodingKey {
        case imageSignatureId, opcRequestId, ifMatch, updateContainerImageSignatureDetails
    }

    public init(
                imageSignatureId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateContainerImageSignatureDetails: UpdateContainerImageSignatureDetails? = nil
    ) {
        self.imageSignatureId = imageSignatureId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateContainerImageSignatureDetails = updateContainerImageSignatureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerImageSignatureRequest: CustomStringConvertible {
    public var description: String { "UpdateContainerImageSignatureRequest()" }
}

// MARK: - UpdateContainerImageSignatureResponse

public struct UpdateContainerImageSignatureResponse: Codable, Sendable {
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

extension UpdateContainerImageSignatureResponse: CustomStringConvertible {
    public var description: String { "UpdateContainerImageSignatureResponse()" }
}