import Foundation

// MARK: - GetToolRequest

public struct GetToolRequest: Codable, Sendable {
    public var toolId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case toolId, opcRequestId
    }

    public init(
                toolId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.toolId = toolId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetToolRequest: CustomStringConvertible {
    public var description: String { "GetToolRequest()" }
}

// MARK: - GetToolResponse

public struct GetToolResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var tool: Tool?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, tool
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                tool: Tool? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.tool = tool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetToolResponse: CustomStringConvertible {
    public var description: String { "GetToolResponse()" }
}