import Foundation

// MARK: - ImportStandardTagsRequest

public struct ImportStandardTagsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var importStandardTagsDetails: ImportStandardTagsDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, importStandardTagsDetails, opcRetryToken
    }

    public init(
                opcRequestId: String? = nil,
                importStandardTagsDetails: ImportStandardTagsDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.importStandardTagsDetails = importStandardTagsDetails
        self.opcRetryToken = opcRetryToken
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