import Foundation

// MARK: - Subnet

public struct Subnet: Codable, Sendable {

    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case id
    }

    public init(
                id: String? = nil
    ) {
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Subnet: CustomStringConvertible {
    public var description: String { "Subnet()" }
}