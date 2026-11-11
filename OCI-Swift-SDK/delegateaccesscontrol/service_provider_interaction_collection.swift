import Foundation

// MARK: - ServiceProviderInteractionCollection

public struct ServiceProviderInteractionCollection: Codable, Sendable {

    public var items: [ServiceProviderInteractionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [ServiceProviderInteractionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderInteractionCollection: CustomStringConvertible {
    public var description: String { "ServiceProviderInteractionCollection()" }
}