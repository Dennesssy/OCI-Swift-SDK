import Foundation

// MARK: - StandardTagNamespaceTemplateSummary

public struct StandardTagNamespaceTemplateSummary: Codable, Sendable {

    public var description: String?
    public var standardTagNamespaceName: String?
    public var status: String?

    private enum CodingKeys: String, CodingKey {
        case description, standardTagNamespaceName, status
    }

    public init(
                description: String? = nil,
                standardTagNamespaceName: String? = nil,
                status: String? = nil
    ) {
        self.description = description
        self.standardTagNamespaceName = standardTagNamespaceName
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
