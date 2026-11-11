import Foundation

// MARK: - DelegationControlResourceCollection

public struct DelegationControlResourceCollection: Codable, Sendable {

    public var items: [DelegationControlResourceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DelegationControlResourceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationControlResourceCollection: CustomStringConvertible {
    public var description: String { "DelegationControlResourceCollection()" }
}