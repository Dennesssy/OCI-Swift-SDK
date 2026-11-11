import Foundation

// MARK: - CreateToolRequest

public struct CreateToolRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createToolDetails: CreateToolDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createToolDetails
    }

    public init(
                opcRequestId: String? = nil,
                createToolDetails: CreateToolDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createToolDetails = createToolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateToolRequest: CustomStringConvertible {
    public var description: String { "CreateToolRequest()" }
}

// MARK: - CreateToolResponse

public struct CreateToolResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var tool: Tool?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, tool
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                tool: Tool? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.tool = tool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateToolResponse: CustomStringConvertible {
    public var description: String { "CreateToolResponse()" }
}