import Foundation

// MARK: - BatchTaskEnvironmentCollection

public struct BatchTaskEnvironmentCollection: Codable, Sendable {

    public var items: [BatchTaskEnvironmentSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchTaskEnvironmentSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchTaskEnvironmentCollection: CustomStringConvertible {
    public var description: String { "BatchTaskEnvironmentCollection()" }
}