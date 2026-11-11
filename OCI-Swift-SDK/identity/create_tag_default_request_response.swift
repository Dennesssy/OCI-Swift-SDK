import Foundation

// MARK: - CreateTagDefaultRequest

public struct CreateTagDefaultRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createTagDefaultDetails: CreateTagDefaultDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createTagDefaultDetails
    }

    public init(
                opcRequestId: String? = nil,
                createTagDefaultDetails: CreateTagDefaultDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createTagDefaultDetails = createTagDefaultDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTagDefaultRequest: CustomStringConvertible {
    public var description: String { "CreateTagDefaultRequest()" }
}

// MARK: - CreateTagDefaultResponse

public struct CreateTagDefaultResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var tagDefault: TagDefault?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, tagDefault
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                tagDefault: TagDefault? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.tagDefault = tagDefault
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTagDefaultResponse: CustomStringConvertible {
    public var description: String { "CreateTagDefaultResponse()" }
}