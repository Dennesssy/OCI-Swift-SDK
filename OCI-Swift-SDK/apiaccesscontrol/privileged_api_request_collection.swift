import Foundation

// MARK: - PrivilegedApiRequestCollection

public struct PrivilegedApiRequestCollection: Codable, Sendable {

    public var items: [PrivilegedApiRequestSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PrivilegedApiRequestSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiRequestCollection: CustomStringConvertible {
    public var description: String { "PrivilegedApiRequestCollection()" }
}