import Foundation

// MARK: - DeleteContainerImageRequest

public struct DeleteContainerImageRequest: Codable, Sendable {
    public var imageId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case imageId, ifMatch, opcRequestId
    }

    public init(
                imageId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.imageId = imageId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteContainerImageRequest: CustomStringConvertible {
    public var description: String { "DeleteContainerImageRequest()" }
}

// MARK: - DeleteContainerImageResponse

public struct DeleteContainerImageResponse: Codable, Sendable {
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

extension DeleteContainerImageResponse: CustomStringConvertible {
    public var description: String { "DeleteContainerImageResponse()" }
}