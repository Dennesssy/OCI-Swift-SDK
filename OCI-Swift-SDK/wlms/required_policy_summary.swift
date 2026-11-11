import Foundation

// MARK: - RequiredPolicySummary

public struct RequiredPolicySummary: Codable, Sendable {

    public var name: String?
    public var statements: [String]
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case name, statements, description
    }

    public init(
                name: String? = nil,
                statements: [String],
                description: String? = nil
    ) {
        self.name = name
        self.statements = statements
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
