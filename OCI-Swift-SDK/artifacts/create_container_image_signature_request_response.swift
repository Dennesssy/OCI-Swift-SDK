import Foundation

// MARK: - CreateContainerImageSignatureRequest

public struct CreateContainerImageSignatureRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var ifMatch: String?
    public var createContainerImageSignatureDetails: CreateContainerImageSignatureDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, ifMatch, createContainerImageSignatureDetails
    }

    public init(
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                createContainerImageSignatureDetails: CreateContainerImageSignatureDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.createContainerImageSignatureDetails = createContainerImageSignatureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateContainerImageSignatureRequest: CustomStringConvertible {
    public var description: String { "CreateContainerImageSignatureRequest()" }
}

// MARK: - CreateContainerImageSignatureResponse

public struct CreateContainerImageSignatureResponse: Codable, Sendable {
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

extension CreateContainerImageSignatureResponse: CustomStringConvertible {
    public var description: String { "CreateContainerImageSignatureResponse()" }
}