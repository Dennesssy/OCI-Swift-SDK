import Foundation

// MARK: - Function

public struct Function: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var parameters: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case name, description, parameters
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                parameters: [String: String]? = nil
    ) {
        self.name = name
        self.description = description
        self.parameters = parameters
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
