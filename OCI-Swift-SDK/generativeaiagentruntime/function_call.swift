import Foundation

// MARK: - FunctionCall

public struct FunctionCall: Codable, Sendable {

    public var name: String?
    public var arguments: String?

    private enum CodingKeys: String, CodingKey {
        case name, arguments
    }

    public init(
                name: String? = nil,
                arguments: String? = nil
    ) {
        self.name = name
        self.arguments = arguments
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FunctionCall: CustomStringConvertible {
    public var description: String { "FunctionCall()" }
}