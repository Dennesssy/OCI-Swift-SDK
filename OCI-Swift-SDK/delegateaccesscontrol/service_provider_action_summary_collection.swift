import Foundation

// MARK: - ServiceProviderActionSummaryCollection

public struct ServiceProviderActionSummaryCollection: Codable, Sendable {

    public var items: [ServiceProviderActionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ServiceProviderActionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderActionSummaryCollection: CustomStringConvertible {
    public var description: String { "ServiceProviderActionSummaryCollection()" }
}