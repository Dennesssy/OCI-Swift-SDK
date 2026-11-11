import Foundation

// MARK: - InfrastructureCollection

public struct InfrastructureCollection: Codable, Sendable {

    public var items: [InfrastructureSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [InfrastructureSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InfrastructureCollection: CustomStringConvertible {
    public var description: String { "InfrastructureCollection()" }
}