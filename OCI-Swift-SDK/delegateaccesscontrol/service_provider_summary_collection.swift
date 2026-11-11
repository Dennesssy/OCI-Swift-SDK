import Foundation

// MARK: - ServiceProviderSummaryCollection

public struct ServiceProviderSummaryCollection: Codable, Sendable {

    public var items: [ServiceProviderSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ServiceProviderSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderSummaryCollection: CustomStringConvertible {
    public var description: String { "ServiceProviderSummaryCollection()" }
}