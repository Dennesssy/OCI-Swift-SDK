import Foundation

// MARK: - DeleteContainerImageSignatureRequest

public struct DeleteContainerImageSignatureRequest: Codable, Sendable {
    public var imageSignatureId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case imageSignatureId, opcRequestId, ifMatch
    }

    public init(
                imageSignatureId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.imageSignatureId = imageSignatureId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteContainerImageSignatureRequest: CustomStringConvertible {
    public var description: String { "DeleteContainerImageSignatureRequest()" }
}

// MARK: - DeleteContainerImageSignatureResponse

public struct DeleteContainerImageSignatureResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteContainerImageSignatureResponse: CustomStringConvertible {
    public var description: String { "DeleteContainerImageSignatureResponse()" }
}