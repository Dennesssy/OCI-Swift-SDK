import Foundation

// MARK: - GetStandardTagTemplateRequest

public struct GetStandardTagTemplateRequest: Codable, Sendable {
    public var compartmentId: String?
    public var standardTagNamespaceName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, standardTagNamespaceName, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                standardTagNamespaceName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.standardTagNamespaceName = standardTagNamespaceName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetStandardTagTemplateRequest: CustomStringConvertible {
    public var description: String { "GetStandardTagTemplateRequest()" }
}

// MARK: - GetStandardTagTemplateResponse

public struct GetStandardTagTemplateResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var standardTagNamespaceTemplate: StandardTagNamespaceTemplate?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, standardTagNamespaceTemplate
    }

    public init(
                opcRequestId: String? = nil,
                standardTagNamespaceTemplate: StandardTagNamespaceTemplate? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.standardTagNamespaceTemplate = standardTagNamespaceTemplate
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetStandardTagTemplateResponse: CustomStringConvertible {
    public var description: String { "GetStandardTagTemplateResponse()" }
}