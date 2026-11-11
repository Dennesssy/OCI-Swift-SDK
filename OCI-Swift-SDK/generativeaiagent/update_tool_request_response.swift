import Foundation

// MARK: - UpdateToolRequest

public struct UpdateToolRequest: Codable, Sendable {
    public var toolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateToolDetails: UpdateToolDetails?

    private enum CodingKeys: String, CodingKey {
        case toolId, ifMatch, opcRequestId, updateToolDetails
    }

    public init(
                toolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateToolDetails: UpdateToolDetails? = nil
    ) {
        self.toolId = toolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateToolDetails = updateToolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateToolRequest: CustomStringConvertible {
    public var description: String { "UpdateToolRequest()" }
}

// MARK: - UpdateToolResponse

public struct UpdateToolResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateToolResponse: CustomStringConvertible {
    public var description: String { "UpdateToolResponse()" }
}