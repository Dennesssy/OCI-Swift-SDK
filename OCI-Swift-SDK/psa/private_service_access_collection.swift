import Foundation

// MARK: - PrivateServiceAccessCollection

public struct PrivateServiceAccessCollection: Codable, Sendable {

    public var items: [PrivateServiceAccessSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PrivateServiceAccessSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivateServiceAccessCollection: CustomStringConvertible {
    public var description: String { "PrivateServiceAccessCollection()" }
}