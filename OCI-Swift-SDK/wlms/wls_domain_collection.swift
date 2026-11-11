import Foundation

// MARK: - WlsDomainCollection

public struct WlsDomainCollection: Codable, Sendable {

    public var items: [WlsDomainSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [WlsDomainSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WlsDomainCollection: CustomStringConvertible {
    public var description: String { "WlsDomainCollection()" }
}