import Foundation

// MARK: - IotDomainCollection

public struct IotDomainCollection: Codable, Sendable {

    public var items: [IotDomainSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [IotDomainSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IotDomainCollection: CustomStringConvertible {
    public var description: String { "IotDomainCollection()" }
}