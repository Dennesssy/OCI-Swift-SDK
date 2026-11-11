import Foundation

// MARK: - ApiPlatformInstanceCollection

public struct ApiPlatformInstanceCollection: Codable, Sendable {

    public var items: [ApiPlatformInstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ApiPlatformInstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiPlatformInstanceCollection: CustomStringConvertible {
    public var description: String { "ApiPlatformInstanceCollection()" }
}