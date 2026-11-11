import Foundation

// MARK: - BuildRunArgument

public struct BuildRunArgument: Codable, Sendable {

    public var name: String?
    public var value: String?

    private enum CodingKeys: String, CodingKey {
        case name, value
    }

    public init(
                name: String? = nil,
                value: String? = nil
    ) {
        self.name = name
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunArgument: CustomStringConvertible {
    public var description: String { "BuildRunArgument()" }
}