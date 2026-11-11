import Foundation

// MARK: - WlsDomainCredentialCollection

public struct WlsDomainCredentialCollection: Codable, Sendable {

    public var items: [WlsDomainCredentialSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WlsDomainCredentialSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WlsDomainCredentialCollection: CustomStringConvertible {
    public var description: String { "WlsDomainCredentialCollection()" }
}