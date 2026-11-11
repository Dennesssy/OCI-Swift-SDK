import Foundation

// MARK: - SubnetSet

public struct SubnetSet: Codable, Sendable {

    public var subnets: [String]

    private enum CodingKeys: String, CodingKey {
        case subnets
    }

    public init(
                subnets: [String]
    ) {
        self.subnets = subnets
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SubnetSet: CustomStringConvertible {
    public var description: String { "SubnetSet()" }
}