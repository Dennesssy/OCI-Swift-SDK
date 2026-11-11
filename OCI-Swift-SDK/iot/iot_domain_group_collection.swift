import Foundation

// MARK: - IotDomainGroupCollection

public struct IotDomainGroupCollection: Codable, Sendable {

    public var items: [IotDomainGroupSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [IotDomainGroupSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IotDomainGroupCollection: CustomStringConvertible {
    public var description: String { "IotDomainGroupCollection()" }
}