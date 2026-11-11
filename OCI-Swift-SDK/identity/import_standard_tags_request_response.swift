import Foundation

// MARK: - ImportStandardTagsRequest

public struct ImportStandardTagsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var importStandardTagsDetails: ImportStandardTagsDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, importStandardTagsDetails
    }

    public init(
                opcRequestId: String? = nil,
                importStandardTagsDetails: ImportStandardTagsDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.importStandardTagsDetails = importStandardTagsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ImportStandardTagsRequest: CustomStringConvertible {
    public var description: String { "ImportStandardTagsRequest()" }
}

// MARK: - ImportStandardTagsResponse

public struct ImportStandardTagsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ImportStandardTagsResponse: CustomStringConvertible {
    public var description: String { "ImportStandardTagsResponse()" }
}